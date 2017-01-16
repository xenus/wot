import info_panel_data
from BigWorld import player, target
from xvm_main.python import config
from xfw import registerEvent, as_event
from Avatar import PlayerAvatar
from gui.shared.utils.TimeInterval import TimeInterval
from messenger import MessengerEntry

infoPanelConfig = config.get('infoPanel', '')
hotKeyPressed = False

MACROSES = [
    '{{nick_name}}', '{{marks_on_gun}}', '{{vehicle_name}}', '{{vehicle_system_name}}', '{{icon_system_name}}', '{{gun_name}}', '{{gun_caliber}}',
    '{{max_ammo}}', '{{gun_reload}}', '{{gun_reload_equip}}', '{{dmg_per_min}}', '{{dmg_per_min_equip}}', '{{gun_clip}}', '{{gun_clip_reload}}',
    '{{gun_burst}}', '{{gun_burst_reload}}', '{{gun_aiming_time}}', '{{gun_accuracy}}', '{{shell_name_1}}', '{{shell_name_2}}', '{{shell_name_3}}',
    '{{shell_damage_1}}', '{{shell_damage_2}}', '{{shell_damage_3}}', '{{shell_power_1}}', '{{shell_power_2}}', '{{shell_power_3}}', '{{shell_type_1}}',
    '{{shell_type_2}}', '{{shell_type_3}}', '{{shell_speed_1}}', '{{shell_speed_2}}', '{{shell_speed_3}}', '{{shell_distance_1}}', '{{shell_distance_2}}',
    '{{shell_distance_3}}', '{{angle_pitch_up}}', '{{angle_pitch_down}}', '{{angle_pitch_left}}', '{{angle_pitch_right}}', '{{vehicle_max_health}}',
    '{{armor_hull_front}}', '{{armor_hull_side}}', '{{armor_hull_back}}', '{{turret_name}}', '{{armor_turret_front}}', '{{armor_turret_side}}',
    '{{armor_turret_back}}', '{{vehicle_weight}}', '{{chassis_max_weight}}', '{{engine_name}}', '{{engine_power}}', '{{engine_power_density}}', 
    '{{speed_forward}}', '{{speed_backward}}', '{{hull_speed_turn}}', '{{turret_speed_turn}}', '{{invis_stand}}', '{{invis_stand_shot}}', '{{invis_move}}', 
    '{{invis_move_shot}}', '{{vision_radius}}', '{{radio_name}}', '{{radio_radius}}'
]

class InfoPanel(object):

    def __init__(self):
        self.textFormats = infoPanelConfig['formats']
        self.textsFormatted = None
        self.timer = None

    def reset(self):
        self.__init__()
        info_panel_data.reset()

    def setTextsFormatted(self):
        
        def getFuncResponse(funcName):
            func = getattr(info_panel_data, funcName, None)
            if func and callable(func):
                return func()
            else:
                return 'null'
        
        self.textsFormatted = []
        for textFormat in self.textFormats:
            for macros in MACROSES:
                if macros in textFormat:
                    funcName = macros.replace('{', '').replace('}', '')
                    funcResponse = getFuncResponse(funcName)
                    textFormat = textFormat.replace(macros, funcResponse)
            self.textsFormatted.append(textFormat)

    def hide(self):
        if self.timer is not None and self.timer.isStarted():
            self.timer.stop()
            self.timer = None
        self.textsFormatted = None
        as_event('ON_INFO_PANEL')

    def updateBlur(self):
        if hotKeyPressed or (player().getVehicleAttached() is None):
            return
        if self.timer is not None and self.timer.isStarted():
            self.timer.stop()
            self.timer = None
        self.timer = TimeInterval(infoPanelConfig['delay'], self, 'hide')
        self.timer.start()

    def update(self, vehicle):
        if hotKeyPressed:
            return
        info_panel_data.init(vehicle)
        self.setTextsFormatted()
        as_event('ON_INFO_PANEL')

InfoPanel = InfoPanel()

###

@registerEvent(PlayerAvatar, 'targetBlur')
def targetBlur(self, prevEntity):
    InfoPanel.updateBlur()

@registerEvent(PlayerAvatar, 'targetFocus')
def targetFocus(self, entity):
    InfoPanel.update(entity)

@registerEvent(PlayerAvatar, 'handleKey')
def handleKey(self, isDown, key, mods):
    global hotKeyPressed
    if (key != infoPanelConfig['altKey']) or MessengerEntry.g_instance.gui.isFocused():
        return
    if isDown:
        InfoPanel.update(player().getVehicleAttached())
        hotKeyPressed = True
    elif not isDown:
        hotKeyPressed = False
        if target() is not None:
            InfoPanel.update(target())
        else:
            InfoPanel.hide()

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def _PlayerAvatar__destroyGUI(self):
    global hotKeyPressed
    InfoPanel.reset()
    hotKeyPressed = False

###

@xvm.export('infoPanelFormat', deterministic=False)
def infoPanelFormat(idx = 0):
    if InfoPanel.textsFormatted is not None:
        return InfoPanel.textsFormatted[idx]

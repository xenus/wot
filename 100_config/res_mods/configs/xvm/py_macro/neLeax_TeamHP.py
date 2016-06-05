#####################################################################
# imports

import xvm_battle.python.fragCorrelationPanel as panel
import BigWorld

# Для расчета ХП
from constants import VEHICLE_HIT_FLAGS
#import BigWorld
from Avatar import PlayerAvatar
from Vehicle import Vehicle
from gui.Scaleform.Battle import Battle
from xfw import *

#####################################################################
# globals

max_hp = [0, 0]
actual_arenaUniqueID = None

#####################################################################
# constants

# Параметры полос очков прочности.
section = 20                        # Количество секций в полосе.
textBar = ["&#x63;", "&#x62;"]      # Символы для отрисовки полосы союзников и противников.

#####################################################################
# handlers


###################
# %%%РАСЧЕТ ХП %%%#
###################
class Battle_Info(object):
    def __init__(self):
        self.enemy_hp = {}
        self.damage_log = {}

battle_info = Battle_Info()

@registerEvent(Battle, 'beforeDelete')
def beforeDelete(self):
    battle_info.enemy_hp.clear()
    battle_info.damage_log.clear()

@registerEvent(Vehicle, 'onHealthChanged')
def onHealthChanged(self, newHealth, attackerID, attackReasonID):
    damage_helth(self, newHealth, attackerID, attackReasonID)

def IsLive(vehicleID):
    player = BigWorld.player()
    vehicles = player.arena.vehicles
    return vehicles[vehicleID]['isAlive'] if player is not None else None

def IsFriendly(vehicleID):
    player = BigWorld.player()
    vehicles = player.arena.vehicles
    return vehicles[player.playerVehicleID]['team'] == vehicles[vehicleID]['team'] if player is not None else None

def get_all_health():
    for vehicleID in BigWorld.entities.values():
        if type(vehicleID) is Vehicle:
            if IsLive(vehicleID.id) and not IsFriendly(vehicleID.id):
                battle_info.enemy_hp[vehicleID.id] = vehicleID.health

def damage_helth(self, newHealth, attackerID, attackReasonID):
    if self.id in battle_info.enemy_hp.keys():
        if attackerID == BigWorld.player().playerVehicleID:
            damage = battle_info.enemy_hp[self.id] - newHealth
            in_arr = False
            for key, value in battle_info.damage_log.items():
                if self.id == value['id']:
                    value['damage'] = value['damage'] + damage
                    in_arr = True

            if not in_arr:
                battle_info.damage_log[len(battle_info.damage_log)] = {'id': self.id, 'damage': damage}
        battle_info.enemy_hp[self.id] = newHealth
    get_all_health()

def damage():
    damage = 0
    for key, value in battle_info.damage_log.items():
        damage = damage + value['damage']
    return damage
    BigWorld.callback(0.5, lambda: damage()) 

###################
# ///РАСЧЕТ ХП/// #
###################

# Очки прочности команд.
@xvm.export('nelx.total_hp', deterministic=False)
def total_hp(team):     
    global actual_arenaUniqueID, max_hp
    arenaUniqueID = BigWorld.player().arenaUniqueID
    if actual_arenaUniqueID != arenaUniqueID:
        actual_arenaUniqueID = arenaUniqueID
        max_hp[0] = panel.teams_totalhp[0]
        max_hp[1] = panel.teams_totalhp[1]
    return panel.teams_totalhp[team]


# Градиент цвета, в зависимости от перевеса очков прочности одной команды над другой.
@xvm.export('nelx.total_hp.color', deterministic=False)
def color():
    return panel.total_hp_color


# Cравнение очков прочности команд.
@xvm.export('nelx.total_hp.sign', deterministic=False)
def sign():
    return '&lt;' if panel.total_hp_sign == '<' else '&gt;' if panel.total_hp_sign == '>' else panel.total_hp_sign


# Полоса очков прочности.
@xvm.export('nelx.total_hp.healthBar', deterministic=False)
def healthBar(team):
    bar = int(round( (panel.teams_totalhp[team] * section) / float(max(max_hp)) ))
    return '<font face="xvm"><b>' + textBar[team] * bar + '</b></font>'


# Фон полосы очков прочности.
@xvm.export('nelx.total_hp.healthBar_background', deterministic=True)
def healthBar_background(team):
    return '<font face="xvm"><b>' + textBar[team] * section + '</b></font>'


# Индикатор, перемещяющийся в зависимости от перевеса ХП.
@xvm.export('nelx.total_hp.superiority', deterministic=False)
def superiority():
    al = panel.teams_totalhp[0]
    en = panel.teams_totalhp[1]
    max_hp_now = float( max(panel.teams_totalhp) )
    superiority = int(round( abs((al - en) / max_hp_now) * 500. , 2 ))
    fill = '<font size="4" alpha="#00">' + ('&nbsp;' * superiority ) + '</font>'
    indicator = '<b>^</b>'
    if en > al:
        indicator, fill = fill, indicator
    return indicator + fill


# Расчет разницы в процентах от максимального ХП из двух команд.
@xvm.export('nelx.total_hp.superiority_text', deterministic=False)
def superiority_text():
    al = panel.teams_totalhp[0]
    en = panel.teams_totalhp[1]
    max_hp_now = float( max(panel.teams_totalhp) )
    result = round( ((al - en) / max_hp_now) * 100. , 2)
    return "<font color='#%s'>%s&#037;</font>" % (color(), result)


# Расчет урона до получения медали "Основной Калибр".
@xvm.export('nelx.mainGun', deterministic=False)
def mainGun():
    myDamage = damage()
    battletype = BigWorld.player().arena.guiType
    if battletype != 1:
        return 
    else:
        gun = max_hp[1] * 0.2
        gun_dynamic =  max_hp[1] * 0.2 - myDamage
        result = int(gun_dynamic)
        if gun_dynamic <= 0:
            gun_dynamic = "<font face='xvm' color='#96FF00' size='21'>&#x78;</font>"
            result = gun_dynamic

        if gun < 1000:
            gun_dynamic = 1000 - myDamage
            result = int(gun_dynamic)
            if gun_dynamic <= 0:
                gun_dynamic = "<font face='xvm' color='#96FF00' size='21'>&#x78;</font>"
                result = gun_dynamic

    return "<img src='img://gui/maps/icons/achievement/32x32/mainGun.png' width='32' height='32' align='middle' vspace='-9'>%s" % (result)


# Расчет процента нанесенного урона.
@xvm.export('nelx.damagePercent', deterministic=False)
def damagePercent():
    myDamage = damage()
    if myDamage == 0:
        result = 0
    else:
        result = round (100. / max_hp[1] * myDamage , 1)
    return "%s&#037; <img src='img://gui/maps/icons/vehParams/damageAvgPerMinute.png' width='24' height='24' align='middle' vspace='-4'>" % (result)
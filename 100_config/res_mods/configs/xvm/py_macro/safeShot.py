import BigWorld, game
from xfw import registerEvent, overrideMethod
from xvm_main.python import config
from Avatar import PlayerAvatar
from messenger import MessengerEntry

safeShotConfig = config.get('safeShot', '')
safeShotEnabled = safeShotConfig['enabled']
lastMessageTime = None
hotKeyPressed = False

@registerEvent(PlayerAvatar, '_PlayerAvatar__startGUI')
def __startGUI(self):
    global safeShotConfig, safeShotEnabled
    safeShotConfig = config.get('safeShot', '')
    safeShotEnabled = safeShotConfig['enabled']

def addClientMessage(Message):
    global lastMessageTime
    if len(Message) == 0:
        return
    if lastMessageTime is None:
        lastMessageTime = BigWorld.serverTime()
        MessengerEntry.g_instance.gui.addClientMessage(Message)
    elif (BigWorld.serverTime() - lastMessageTime) > 3:
        lastMessageTime = BigWorld.serverTime()
        MessengerEntry.g_instance.gui.addClientMessage(Message)
    else:
        return

@registerEvent(game, 'handleKeyEvent')
def handleKeyEvent(event):
    global hotKeyPressed
    
    def changeSafeShotState():
        global safeShotEnabled
        safeShotEnabled = not safeShotEnabled
        MessengerEntry.g_instance.gui.addClientMessage('SafeShot: {}.'.format(safeShotEnabled))
    
    if not (safeShotConfig['enabled'] and (safeShotConfig['disableKey'] == event.key) and not event.isRepeatedEvent() and not MessengerEntry.g_instance.gui.isFocused()):
        return
    elif safeShotConfig['onHold']:
        if not hotKeyPressed and event.isKeyDown():
            hotKeyPressed = True
            changeSafeShotState()
        elif hotKeyPressed and event.isKeyUp():
            hotKeyPressed = False
            changeSafeShotState()
    elif event.isKeyDown():
        changeSafeShotState()
    else:
        return

@overrideMethod(PlayerAvatar, 'shoot')
def shoot(base, self, isRepeat = False):
    if not (safeShotConfig['enabled'] and safeShotEnabled):
        base(self, isRepeat)
        return
    player = BigWorld.player()
    target = BigWorld.target()
    if target is None:
        if safeShotConfig['wasteShotBlock']:
            addClientMessage(safeShotConfig['wasteShotBlockedMessage'])
            return
    else:
        if safeShotConfig['teamShotBlock'] and (player.team is target.publicInfo.team):
            if not (safeShotConfig['teamKillerShotUnblock'] and player.guiSessionProvider.getArenaDP().isTeamKiller(target.id)):
                addClientMessage(safeShotConfig['teamShotBlockedMessage'])
                return
        elif safeShotConfig['deadShotBlock'] and not target.isAlive():
            addClientMessage(safeShotConfig['deadShotBlockedMessage'])
            return
    base(self, isRepeat)

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def __destroyGUI(self):
    global lastMessageTime, hotKeyPressed
    lastMessageTime = None
    hotKeyPressed = False

from gui.Scaleform.daapi.view.battle.shared.indicators import _DamageIndicator
from AvatarInputHandler.control_modes import ArcadeControlMode, SniperControlMode, StrategicControlMode
from xvm_main.python.logger import *
from Vehicle import Vehicle
import BigWorld
from math import pi
import copy


alpha = 0
di = {}
di1 = []
aim = None


@registerEvent(ArcadeControlMode, 'handleMouseEvent')
def arcadeHandleMouseEvent(self, dx, dy, dz):
    global aim
    if di:
        for value in di.values():
            angle = abs(BigWorld.camera().direction.yaw + pi - value)
            if (angle < 0.01) or (abs(angle - 2 * pi) < 0.01):
                if aim is None:
                    aim = 'aim'
                    as_event('ON_DAMAGE_INDICATOR')
                return
        if aim is not None:
            aim = None
            as_event('ON_DAMAGE_INDICATOR')


@registerEvent(StrategicControlMode, 'handleMouseEvent')
def strategicHandleMouseEvent(self, dx, dy, dz):
    global aim
    if di:
        for value in di.values():
            angle = abs(BigWorld.camera().direction.yaw + pi - value)
            if (angle < 0.01) or (abs(angle - 2 * pi) < 0.01):
                if aim is None:
                    aim = 'aim'
                    as_event('ON_DAMAGE_INDICATOR')
                return
        if aim is not None:
            aim = None
            as_event('ON_DAMAGE_INDICATOR')


@registerEvent(SniperControlMode, 'handleMouseEvent')
def sniperHandleMouseEvent(self, dx, dy, dz):
    global aim
    if di:
        for value in di.values():
            angle = abs(BigWorld.camera().direction.yaw + pi - value)
            if (angle < 0.005) or (abs(angle - 2 * pi) < 0.005):
                if aim is None:
                    aim = 'aim'
                    as_event('ON_DAMAGE_INDICATOR')
                return
        if aim is not None:
            aim = None
            as_event('ON_DAMAGE_INDICATOR')


@overrideMethod(_DamageIndicator, 'getDuration')
def _DamageIndicator_getDuration(base, self):
    return 12


@registerEvent(_DamageIndicator, 'showHitDirection')
def _DamageIndicator_showHitDirection(self, idx, hitData, timeLeft):
    global alpha, di
    di[idx] = hitData.getYaw()
    if alpha == 0:
        alpha = 100
        as_event('ON_DAMAGE_INDICATOR')


@registerEvent(_DamageIndicator, 'hideHitDirection')
def _DamageIndicator_hideHitDirection(self, idx):
    global alpha, di
    if idx in di:
        del di[idx]
    if not di and (alpha == 100):
        alpha = 0
        as_event('ON_DAMAGE_INDICATOR')


@registerEvent(Vehicle, 'onEnterWorld')
def onEnterWorld(self, prereqs):
    if self.isPlayerVehicle:
        global alpha, aim, di
        di = {}
        alpha = 0
        aim = None
        as_event('ON_DAMAGE_INDICATOR')


@xvm.export('xvm.damageIndicator', deterministic=False)
def xvm_damageIndicator():
    return alpha


@xvm.export('xvm.damageIndicator_aim', deterministic=False)
def xvm_damageIndicator_aim():
    return aim

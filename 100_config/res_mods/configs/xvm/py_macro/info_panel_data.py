#####################################################################
# imports

from math import degrees

#####################################################################
# constants

shell_type = {
    'ARMOR_PIERCING': 'ББ',
    'HIGH_EXPLOSIVE': 'ОФ',
    'ARMOR_PIERCING_CR': 'БП',
    'ARMOR_PIERCING_HE': 'ХФ',
    'HOLLOW_CHARGE': 'КС',
}

#####################################################################
# private

_vehicle = None
_typeDescriptor = None
_gunShots = None

def init(vehicle):
    global _vehicle, _typeDescriptor, _gunShots
    _vehicle = vehicle
    _typeDescriptor = vehicle.typeDescriptor
    _gunShots = _typeDescriptor.gun['shots']

def reset():
    global _vehicle, _typeDescriptor, _gunShots
    _vehicle = None
    _typeDescriptor = None
    _gunShots = None

#####################################################################
# handlers

def nick_name():
    return _vehicle.publicInfo['name']

def marks_on_gun():
    return _vehicle.publicInfo['marksOnGun']

def vehicle_name():
    return _typeDescriptor.type.userString

def vehicle_system_name():
    return _typeDescriptor.name

def icon_system_name():
    return _typeDescriptor.name.replace(':', '-')

def gun_name():
    return _typeDescriptor.gun['shortUserString']

def gun_caliber():
    return "%i" % (_gunShots[0]['shell']['caliber'])

def max_ammo():
    return "%i" % (_typeDescriptor.gun['maxAmmo'])

def gun_reload():
    return "%.1f" % (_typeDescriptor.gun['reloadTime'])

def gun_reload_equip():
    reload_orig = _typeDescriptor.gun['reloadTime']
    crew = 0.94 if _typeDescriptor.miscAttrs['crewLevelIncrease'] != 0 else 1
    if (_typeDescriptor.gun['clip'][0] == 1) and (_typeDescriptor.miscAttrs['gunReloadTimeFactor'] != 0):
        rammer = _typeDescriptor.miscAttrs['gunReloadTimeFactor']
    else:
        rammer = 1
    return "%.1f" % (round(reload_orig * crew * rammer, 1))

def dmg_per_min():
    time = _typeDescriptor.gun['reloadTime'] + _typeDescriptor.gun['clip'][0] * _typeDescriptor.gun['clip'][1]
    return "%i" % (round(_typeDescriptor.gun['clip'][0] / time * 60 * _typeDescriptor.gun['shots'][0]['shell']['damage'][0], 0))

def dmg_per_min_equip():
    reload_orig = _typeDescriptor.gun['reloadTime']
    crew = 0.94 if _typeDescriptor.miscAttrs['crewLevelIncrease'] != 0 else 1
    if (_typeDescriptor.gun['clip'][0] == 1) and (_typeDescriptor.miscAttrs['gunReloadTimeFactor'] != 0):
        rammer = _typeDescriptor.miscAttrs['gunReloadTimeFactor']
    else:
        rammer = 1
    reload_equip = reload_orig * crew * rammer 
    time = reload_equip + _typeDescriptor.gun['clip'][0] * _typeDescriptor.gun['clip'][1]
    return "%i" % (round(_typeDescriptor.gun['clip'][0] / time * 60 * _typeDescriptor.gun['shots'][0]['shell']['damage'][0], 0))

def gun_clip():
    return "%i" % (_typeDescriptor.gun['clip'][0])

def gun_clip_reload():
    return "%i" % (_typeDescriptor.gun['clip'][1])

def gun_burst():
    return "%i" % (_typeDescriptor.gun['burst'][0])

def gun_burst_reload():
    return "%i" % (_typeDescriptor.gun['burst'][1])    

def gun_aiming_time():
    return "%.1f" % (_typeDescriptor.gun['aimingTime'])

def gun_accuracy():
    return "%.2f" % (_typeDescriptor.gun['shotDispersionAngle'])

def shell_name_1():
    return '' if len(_gunShots) < 1 else _gunShots()[0]['shell']['userString']

def shell_name_2():
    return '' if len(_gunShots) < 2 else _gunShots()[1]['shell']['userString']

def shell_name_3():
    return '' if len(_gunShots) < 3 else _gunShots()[2]['shell']['userString']

def shell_damage_1():
    return "%i" % (_gunShots[0]['shell']['damage'][0])

def shell_damage_2():
    return '' if len(_gunShots) < 2 else "%i" % (_gunShots[1]['shell']['damage'][0])

def shell_damage_3():
    return '' if len(_gunShots) < 3 else "%i" % (_gunShots[2]['shell']['damage'][0])

def shell_power_1():
    return "%i" % (_gunShots[0]['piercingPower'][0])

def shell_power_2():
    return '' if len(_gunShots) < 2 else "%i" % (_gunShots[1]['piercingPower'][0])

def shell_power_3():
    return '' if len(_gunShots) < 3 else "%i" % (_gunShots[2]['piercingPower'][0])

def shell_type_1():
    return '' if len(_gunShots) < 1 else shell_type[_gunShots[0]['shell']['kind']]

def shell_type_2():
    return '' if len(_gunShots) < 2 else shell_type[_gunShots[1]['shell']['kind']]

def shell_type_3():
    return '' if len(_gunShots) < 3 else shell_type[_gunShots[2]['shell']['kind']]

def shell_speed_1():
    return '' if len(_gunShots) < 1 else "%i" % (_gunShots[0]['speed'])

def shell_speed_2():
    return '' if len(_gunShots) < 2 else "%i" % (_gunShots[1]['speed'])

def shell_speed_3():
    return '' if len(_gunShots) < 3 else "%i" % (_gunShots[2]['speed'])

def shell_distance_1():
    return '' if len(_gunShots) < 1 else "%i" % (_gunShots[0]['maxDistance'])

def shell_distance_2():
    return '' if len(_gunShots) < 2 else "%i" % (_gunShots[1]['maxDistance'])

def shell_distance_3():
    return '' if len(_gunShots) < 3 else "%i" % (_gunShots[2]['maxDistance'])

def angle_pitch_up():
    return "%i" % (degrees(-_typeDescriptor.gun['pitchLimits']['absolute'][0]))

def angle_pitch_down():
    return "%i" % (degrees(-_typeDescriptor.gun['pitchLimits']['absolute'][1])) 

def angle_pitch_left():
    return "%i" % (degrees(-_typeDescriptor.gun['turretYawLimits'][0])) if _typeDescriptor.gun['turretYawLimits'] is not None else ''

def angle_pitch_right():
    return "%i" % (degrees(_typeDescriptor.gun['turretYawLimits'][1])) if _typeDescriptor.gun['turretYawLimits'] is not None else ''

def vehicle_max_health():
    return _typeDescriptor.maxHealth

def armor_hull_front():
    return "%i" % (_typeDescriptor.hull['primaryArmor'][0])

def armor_hull_side():
    return "%i" % (_typeDescriptor.hull['primaryArmor'][1])

def armor_hull_back():
    return "%i" % (_typeDescriptor.hull['primaryArmor'][2])

def turret_name():
    return _typeDescriptor.turret['shortUserString']

def armor_turret_front():
    return "%i" % (_typeDescriptor.turret['primaryArmor'][0])

def armor_turret_side():
    return "%i" % (_typeDescriptor.turret['primaryArmor'][1])

def armor_turret_back():
    return "%i" % (_typeDescriptor.turret['primaryArmor'][2])

def vehicle_weight():
    return "%i" % (round(_typeDescriptor.physics['weight'] / 1000, 1))

def chassis_max_weight():
    return "%i" % (round(_typeDescriptor.chassis['maxLoad'] / 1000, 1))

def engine_name():
    return _typeDescriptor.engine['shortUserString']

def engine_power():
    return "%i" % (round(_typeDescriptor.engine['power'] / 735.49875, 0))

def engine_power_density():
    power = _typeDescriptor.engine['power'] / 735.49875
    weight = _typeDescriptor.physics['weight'] / 1000
    return "%.2f" % (round(power / weight, 2))

def speed_forward():
    return "%i" % (_typeDescriptor.physics['speedLimits'][0] * 3.6)

def speed_backward():
    return "%i" % (_typeDescriptor.physics['speedLimits'][1] * 3.6)

def hull_speed_turn():
    return "%i" % (degrees(_typeDescriptor.chassis['rotationSpeed']))

def turret_speed_turn():
    return "%i" % (degrees(_typeDescriptor.turret['rotationSpeed']))

def invis_stand():
    return "%.1f" % (_typeDescriptor.type.invisibility[1] * 50)

def invis_stand_shot():
    return "%.2f" % (_typeDescriptor.type.invisibility[1] * _typeDescriptor.gun['invisibilityFactorAtShot'] * 50)

def invis_move():
    return "%.1f" % (_typeDescriptor.type.invisibility[0] * 50)

def invis_move_shot():
    return "%.2f" % (_typeDescriptor.type.invisibility[0] * _typeDescriptor.gun['invisibilityFactorAtShot'] * 50)

def vision_radius():
    return "%i" % (_typeDescriptor.turret['circularVisionRadius'])

def radio_name():
    return _typeDescriptor.radio['shortUserString']

def radio_radius():
    return "%i" % (_typeDescriptor.radio['distance'])
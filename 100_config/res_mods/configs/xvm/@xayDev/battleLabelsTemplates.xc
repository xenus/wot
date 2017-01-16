/**
 * Battle inteface text fields.
 * Текстовые поля боевого интерфейса.
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    "hitlogHeader": {
      "enabled": true,
      "updateEvent": "ON_DAMAGE_CAUSED, ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?5|{{py:math.sum({{pp.widthLeft}},50)}}}}",
      "y": "{{pp.mode=0?65|40}}",
      "width": 500,
      "height": 1000,
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{hitlog-header}}"
      // Format of the full hitlog (header and body)
      // Формат полного хит-лога (шапка и тело)
      // "format": "{{hitlog-header}}\n{{hitlog-body}}"
    },
    "hitlogBody": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false,
      "updateEvent": "ON_DAMAGE_CAUSED, ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?5|{{py:math.sum({{pp.widthLeft}},50)}}}}",
      "y": "{{pp.mode=0?85|60}}",
      "width": 500,
      "height": 1000,
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{hitlog-body}}"
    },
    // Total hp indicator.
    // Индикатор общего HP команд.
    "totalHP": {
      "enabled": true,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 0,
      "y": 30,
      "screenHAlign": "center",
      "align": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "font": "mono", "size": 18, "align": "center" },
      "format": "{{py:xvm.total_hp.text}}"
    },
    // Avg damage on current vehicle.
    // Средний урон на текущей технике.
    "avgDamage": {
      "enabled": true,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": -170,
      "y": 30,
      "screenHAlign": "center",
      "align": "right",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "size": 15, "align": "center" },
      "format": "{{py:xvm.total_hp.avgDamage('{{l10n:avgDamage}}: ',{{hitlog.dmg-total}})}}"
    },
    // Threshold necessary for achievements "High caliber".
    // Порог необходимый для получения достижения "Основной калибр".
    "mainGun": {
      "enabled": true,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 170,
      "y": 30,
      "screenHAlign": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "size": 15, "align": "center" },
      "format": "{{py:xvm.total_hp.mainGun('{{l10n:mainGun}}: ',{{hitlog.dmg-total}})}}"
    },
    // Chance of winning.
    // Шанс на победу.
    "winChance": {
      "enabled": false,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 230,
      "y": 2,
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "size": 15 },
      "format": "{{xvm-stat?{{l10n:Team strength}}: {{py:xvm.team_strength('{{allyStrengthStatic}}','{{enemyStrengthStatic}}')}} / {{py:xvm.team_strength('{{allyStrengthLive}}','{{enemyStrengthLive}}')}}}}"
    },
    // Log of the received damage (see damageLog.xc).
    // Лог полученного урона (см. damageLog.xc).
    "damageLog": {
      "enabled": false,
      "updateEvent": "PY(ON_HIT)",
      "x": "{{py:xvm.damageLog.dLog_x}}",
      "y": "{{py:xvm.damageLog.dLog_y}}",
      "width": 300,
      "height": 210,
      "screenVAlign": "bottom",
      "shadow": { 
        "distance": "{{py:xvm.damageLog.dLog_shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.dLog_shadow('angle')}}",
        "color": "{{py:xvm.damageLog.dLog_shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.dLog_shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.dLog_shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.dLog_shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.dLog_shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.dLog_shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.dLog_shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.dLog_shadow('quality')}}" 
      },
      "textFormat": { "color": "0xF4EFE8", "size": 16},
      "format": "{{py:xvm.damageLog.dLog}}",
      "mouseEvents": {
        "mouseDown": "dLog_mouseDown",
        "mouseUp": "dLog_mouseUp",
        "mouseMove": "dLog_mouseMove"
      }
    },
    // Display the last damage (hit) (see damageLog.xc).
    // Отображение последнего урона (попадания) (см. damageLog.xc).
    "lastHit": {
      "enabled": true,
      "updateEvent": "PY(ON_LAST_HIT)",
      "x": "{{py:xvm.damageLog.lastHit_x}}",
      "y": "{{py:xvm.damageLog.lastHit_y}}",
      "width": 200,
      "height": 100,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { 
        "distance": "{{py:xvm.damageLog.lastHit_shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.lastHit_shadow('angle')}}",
        "color": "{{py:xvm.damageLog.lastHit_shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.lastHit_shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.lastHit_shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.lastHit_shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.lastHit_shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.lastHit_shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.lastHit_shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.lastHit_shadow('quality')}}" 
      },
      "textFormat": {"align": "center", "color": "0xF4EFE8", "size": 16 },
      "format": "{{py:xvm.damageLog.lastHit}}",
      "mouseEvents": {
        "mouseDown": "lastHit_mouseDown",
        "mouseUp": "lastHit_mouseUp",
        "mouseMove": "lastHit_mouseMove"
      }
    },
    "fire": {
      "enabled": false,
      "updateEvent": "PY(ON_FIRE)",
      "x": 120,
      "y": 200,
      "width": 200,
      "height": 100,
      "alpha": "{{py:xvm.damageLog.fire}}",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 3 },
      "textFormat": {"align": "center", "color": "0xF4EFE8", "size": 16 },
      "format": "ПОЖАР"
    },
    "totalEfficiency": {
      "enabled": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": 240,
      "y": -2,
      "width": 300,
      "height": 22,
      "screenVAlign": "top",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 3 },
      "textFormat": { "color": "0xE3E3E3", "size": 16 },
      "format": "<textformat tabstops='[65,130,196]' leading='-2' ><img src='xvm://res/icons/Efficiency/damage.png'> {{py:xvm.totalDamage}}<tab><img src='xvm://res/icons/Efficiency/assist.png'> {{py:xvm.totalAssist}}<tab><img src='xvm://res/icons/Efficiency/reflect.png'> {{py:xvm.totalBlocked}}<tab><img src='xvm://res/icons/Efficiency/discover.png'> {{py:xvm.detection}}</textformat>"
    },
    "angleAimingLeft": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING)",
      "x": "{{py:xvm.anglesAiming_xLeft}}",
      "y": "{{py:xvm.anglesAiming_y}}",
      //image width + 2px //17+2=19	//17+4=21
      "width": 21,
      //image height + 2px //64+2=66	//49+4=53
      "height": 53,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "{{py:xvm.anglesAiming_xLeft>-5?<img src='xvm://res/angle_LL.png'>|<img src='xvm://res/angle_L.png'>}}"
    },
    "angleAimingRight": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING)",
      "x": "{{py:xvm.anglesAiming_xRight}}",
      "y": "{{py:xvm.anglesAiming_y}}",
      "width": 21,
      "height": 53,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "{{py:xvm.anglesAiming_xRight<5?<img src='xvm://res/angle_RL.png'>|<img src='xvm://res/angle_R.png'>}}"
    }, 
    "angleAimingBottom": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING)",
      "x": 0,
      "y": "{{py:xvm.anglesAiming_yBottom}}",
      //image width + 2px //191+2=193	//191+4=195
      "width": 195,
      //image height + 2px //27+2=29	//27+4=31
      "height": 31,
      "alpha" : "{{py:xvm.anglesAiming_yBottom<250?{{py:math.sub(250, {{py:xvm.anglesAiming_yBottom}})}}|0}}",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "<img src='xvm://res/angle_Bottom.png'>"
    }, 
    "angleAimingTop": {
      "enabled": true,
      "updateEvent": "PY(ON_ANGLES_AIMING)",
      "x": 0,
      "y": "{{py:xvm.anglesAiming_yTop}}",
      "width": 197,
      "height": 29,
      "alpha" : "{{py:xvm.anglesAiming_yTop>-350?{{py:math.sum({{py:xvm.anglesAiming_yTop}}, 350)}}|0}}",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "format": "<img src='xvm://res/angle_Top.png'>"
    },
    "damageIndicator": {
      "enabled": true,
      "updateEvent": "PY(ON_DAMAGE_INDICATOR)",
      "x": 0,
      "y": 65,
      "width": 365,
      "height": 90,
      "alpha": "{{py:xvm.damageIndicator}}",
      "screenHAlign": "center",
      "format": "<img src='xvm://res/{{py:xvm.damageIndicator_aim|CentrDI}}.png'>"
    },
    "infoPanel0": {
      "enabled": true,
      "updateEvent": "PY(ON_INFO_PANEL)",
      "x": -110,
      "y": 150,
      "width": 250,
      "height": 250,
      "align": "center",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 14, "color": "0xFCFCFC", "align": "left", "leading": -12 },
      "format": "{{py:infoPanelFormat(0)}}"
    },
    "infoPanel1": {
      "enabled": true,
      "updateEvent": "PY(ON_INFO_PANEL)",
      "x": 0,
      "y": 150,
      "width": 200,
      "height": 100,
      "align": "center",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 2 },
      "textFormat": { "font": "$TitleFont", "size": 15, "align": "center", "leading": -12 },
      "format": "{{py:infoPanelFormat(1)}}"
    },
    "infoPanel2": {
      "enabled": true,
      "updateEvent": "PY(ON_INFO_PANEL)",
      "x": 300,
      "y": 0,
      "width": 200,
      "height": 100,
      "align": "right",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 12, "align": "left", "leading": -10 },
      "format": "{{py:infoPanelFormat(2)}}"
    },
    "infoPanel3": {
      "enabled": true,
      "updateEvent": "PY(ON_INFO_PANEL)",
      "x": -110,
      "y": 150,
      "width": 250,
      "height": 250,
      "align": "center",
      "valign": "center",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { "enabled": true, "distance": 1, "angle": 90, "color": "0x000000", "alpha": 80, "blur": 5, "strength": 2 },
      "textFormat": { "font": "$FieldFont", "size": 14, "color": "0xFCFCFC", "align": "left", "leading": -12 },
      "format": "{{py:infoPanelFormat(3)}}"
    }
//    "AimPos": {
//      "Enabled": true,
//      "UpdateEvent": "ON_EVERY_SECOND",
//      "Alpha": 0,
//      "format": "{{py:xvm.aimpos}}"
//    }
  }
}
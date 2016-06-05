/**
 * Over-target markers. All settings moved to separate files.
 * Маркеры над танками. Все настройки вынесены в отдельные файлы.
 */
{
  "markers": {
    "turretMarkers": { "highVulnerability": "*", "lowVulnerability": "'" },
    "ally": {
      "alive": {
        "normal": {
          "actionMarker": { "alpha": 100, "visible": true, "x": 0, "y": -20 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 50, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 80 },
            "height": 2,
            "lcolor": null,
            "visible": true,
            "width": 70,
            "x": -35,
            "y": 0
          },
          "levelIcon": { "alpha": 100, "visible": true, "x": 0, "y": -9 },
          "textFields": [
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "left", "bold": true, "name": "$FieldFont", "size": 13 },
              "format": "{{vehicle}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 7,
              "y": -1
            },
            {
              "alpha": 100,
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp}}",
              "name": "x{{hp}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 15
            },
            {
              "alpha": "{{a:hp-ratio}}",
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp-max}}",
              "name": "x{{hp-max}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 0
            },
            {
              "alpha": 100,
              "color": "{{c:t-rating}}",
              "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 30 },
              "format": ".",
              "name": "x{{t-rating%d~%|--%}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -1,
              "y": -21
            }
          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 10, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        },
        "extended": {
          "actionMarker": { "alpha": 100, "visible": true, "x": 0, "y": -20 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 50, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 80 },
            "height": 2,
            "lcolor": null,
            "visible": true,
            "width": 70,
            "x": -35,
            "y": 0
          },
          "levelIcon": { "alpha": 100, "visible": true, "x": 0, "y": -9 },
          "textFields": [
            {
              "alpha": "{{a:hp-ratio}}",
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp-max}}",
              "name": "x{{hp-max}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 0
            },
            {
              "alpha": 100,
              "color": "{{c:t-rating}}",
              "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 30 },
              "format": ".",
              "name": "x{{t-rating%d~%|--%}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -1,
              "y": -21
            },
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
              "format": "{{name%.16s~..}}",
              "name": "x{{name%.16s~..}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 7,
              "y": -1
            },
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{clan}}",
              "name": "x{{clan}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 7,
              "y": 15
            },
            {
              "alpha": 100,
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp}}({{hp-ratio}})",
              "name": "x{{hp-ratio}}",
              "shadow": { "alpha": 100, "angle": 90, "color": "0x000000", "distance": 0, "size": 6, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 15
            }
          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        }
      },
      "dead": {
        "normal": {
          "actionMarker": { "alpha": 100, "visible": false, "x": 0, "y": -67 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 30, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 30 },
            "height": 11,
            "lcolor": null,
            "visible": false,
            "width": 60,
            "x": -31,
            "y": -39
          },
          "levelIcon": { "alpha": 100, "visible": false, "x": 0, "y": -21 },
          "textFields": [

          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        },
        "extended": {
          "actionMarker": { "alpha": 100, "visible": false, "x": 0, "y": -67 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 30, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 30 },
            "height": 11,
            "lcolor": null,
            "visible": false,
            "width": 60,
            "x": -31,
            "y": -33
          },
          "levelIcon": { "alpha": 100, "visible": false, "x": 0, "y": -21 },
          "textFields": [
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
              "format": "{{name%.16s~..}}",
              "name": "x{{name%.16s~..}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 0,
              "y": 0
            }
          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        }
      }
    },
    "enemy": {
      "alive": {
        "normal": {
          "actionMarker": { "alpha": 100, "visible": true, "x": 0, "y": -20 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 50, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 80 },
            "height": 2,
            "lcolor": null,
            "visible": true,
            "width": 70,
            "x": -35,
            "y": 0
          },
          "levelIcon": { "alpha": 100, "visible": true, "x": 0, "y": -9 },
          "textFields": [
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "left", "bold": true, "name": "$FieldFont", "size": 13 },
              "format": "{{vehicle}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 7,
              "y": -1
            },
            {
              "alpha": 100,
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp}}",
              "name": "x{{hp}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 15
            },
            {
              "alpha": "{{a:hp-ratio}}",
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp-max}}",
              "name": "x{{hp-max}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 0
            },
            {
              "alpha": 100,
              "color": "{{c:t-rating}}",
              "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 30 },
              "format": ".",
              "name": "x{{t-rating%d~%|--%}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -1,
              "y": -21
            }
          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 10, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        },
        "extended": {
          "actionMarker": { "alpha": 100, "visible": true, "x": 0, "y": -20 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -30
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 50, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 80 },
            "height": 2,
            "lcolor": null,
            "visible": true,
            "width": 70,
            "x": -35,
            "y": 0
          },
          "levelIcon": { "alpha": 100, "visible": true, "x": 0, "y": -9 },
          "textFields": [
            {
              "alpha": "{{a:hp-ratio}}",
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp-max}}",
              "name": "x{{hp-max}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 0
            },
            {
              "alpha": 100,
              "color": "{{c:t-rating}}",
              "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 30 },
              "format": ".",
              "name": "x{{t-rating%d~%|--%}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": -1,
              "y": -21
            },
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
              "format": "{{name%.16s~..}}",
              "name": "x{{name%.16s~..}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 7,
              "y": -1
            },
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{clan}}",
              "name": "x{{clan}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 7,
              "y": 15
            },
            {
              "alpha": 100,
              "color": "0xFFFFFF",
              "font": { "align": "left", "bold": true, "italic": false, "name": "$FieldFont", "size": 11 },
              "format": "{{hp}}({{hp-ratio}})",
              "name": "x{{hp-ratio}}",
              "shadow": { "alpha": 100, "angle": 90, "color": "0x000000", "distance": 0, "size": 6, "strength": 200 },
              "visible": true,
              "x": -35,
              "y": 15
            }
          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        }
      },
      "dead": {
        "normal": {
          "actionMarker": { "alpha": 100, "visible": false, "x": 0, "y": -67 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 30, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 30 },
            "height": 11,
            "lcolor": null,
            "visible": false,
            "width": 60,
            "x": -31,
            "y": -39
          },
          "levelIcon": { "alpha": 100, "visible": false, "x": 0, "y": -21 },
          "textFields": [

          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        },
        "extended": {
          "actionMarker": { "alpha": 100, "visible": false, "x": 0, "y": -67 },
          "clanIcon": { "alpha": 100, "h": 16, "visible": false, "w": 16, "x": 0, "y": -15 },
          "contourIcon": { "alpha": 100, "amount": 0, "color": null, "visible": false, "x": 6, "y": -65 },
          "damageText": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextPlayer": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "damageTextSquadman": {
            "alpha": 100,
            "blowupMessage": "Blow-up!",
            "color": null,
            "damageMessage": "-{{dmg}}",
            "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
            "maxRange": 40,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "speed": 2,
            "visible": true,
            "x": 0,
            "y": -75
          },
          "healthBar": {
            "alpha": 100,
            "border": { "alpha": 30, "color": "0x000000", "size": 1 },
            "color": null,
            "damage": { "alpha": 80, "color": null, "fade": 1 },
            "fill": { "alpha": 30 },
            "height": 11,
            "lcolor": null,
            "visible": false,
            "width": 60,
            "x": -31,
            "y": -33
          },
          "levelIcon": { "alpha": 100, "visible": false, "x": 0, "y": -21 },
          "textFields": [
            {
              "alpha": 100,
              "color": null,
              "font": { "align": "center", "bold": true, "italic": false, "name": "$FieldFont", "size": 13 },
              "format": "{{name%.16s~..}}",
              "name": "x{{name%.16s~..}}",
              "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
              "visible": true,
              "x": 0,
              "y": 0
            }
          ],
          "vehicleIcon": {
            "alpha": 100,
            "color": null,
            "maxScale": 100,
            "scaleX": 0,
            "scaleY": 16,
            "shadow": { "alpha": 100, "angle": 45, "color": "0x000000", "distance": 0, "size": 3, "strength": 200 },
            "showSpeaker": false,
            "visible": true,
            "x": 0,
            "y": 0
          }
        }
      }
    },
    "useStandardMarkers": false
  }
}
﻿/**
 * Minimap labels. Basic HTML/CSS supported.
 * Надписи на миникарте. Поддерживают HTML.
 */
{
  "labels": {
      // {{vehicle-class}} macro substitutions.
      // Подстановки макроса {{vehicle-class}}.
      "vehicleclassmacro": {
        // LT / ЛT ♦.
        "light": "&#x3A;",
        // MT / СТ.
        "medium": "&#x3B;",
        // HT / ТТ.
        "heavy": "&#x3F;",
        // TD / ПТ ▼.
        "td": "&#x2E;",
        // Artillery / Арта. ■
        "spg": "&#x2D;",
        // HeavyTank10 by gui_settings.xml.
        // ТТ10 посредством gui_settings.xml. Кто пользуется- вставить в кавычки значение &#x4A;
        "superh": "&#x4A"
        // Special symbols website / Сайт со спец символами:
        // http://www.fileformat.info/info/unicode/char/25a0/index.htm
        // Great symbolic font by Andrey_Hard for {{vehicle-class}}:
        // Отличный символьный шрифт от Andrey_Hard для замены букв от {{vehicle-class}} макроса:
        // http://goo.gl/d2KIj
      },
      // Textfields for tanks on minimap.
      // Текстовые поля для танков на миникарте.
      "units": {
        // Textfields switch for revealed units.
        // Выключатель добавочных текстовых полей для видимых юнитов.
        "revealedEnabled": true,
        // Textfields switch for lost enemy units. Show last seen position.
        // Выключатель текстовых полей для пропавших врагов.
        "lostEnemyEnabled": true,
        // Тип сглаживания текстовых полей.
        "antiAliasType": "normal", // normal/advanced
        // Формат поля.
        "format": {
          // Союзник.
          "ally":  "<textformat leading='-2'><font face='dynamic' size='18' color='{{c:system}}'>{{hp-ratio%.436a|&#xE6;}}</font><span class='mm_a'><font face='XVMSymbol' size='5' color='{{c:xwn8}}'>&#x21;</font>\n{{vehicle}}</span><textformat>",
          // Тимкиллер.
          "teamkiller":  "<textformat leading='-2'><span class='mm_t'>    <font face='XVMSymbol' size='5' color='{{c:xwn8}}'>&#x21;</font>\n{{vehicle}}</span><textformat>",
          // Враг.
          "enemy": "<textformat leading='-2'><font face='dynamic' size='18' color='{{c:system}}'>{{hp-ratio%.436a|&#xE6;}}</font><span class='mm_e'><font face='XVMSymbol' size='5' color='{{c:xwn8}}'>&#x22;</font>\n{{vehicle}}</span><textformat>",
          // Взводный.
          "squad": "<textformat leading='-2'><font face='dynamic' size='18' color='{{c:system}}'>{{hp-ratio%.436a|&#xE6;}}</font><span class='mm_s'><font face='XVMSymbol' size='5' color='{{c:xwn8}}'>&#x21;</font> <i>{{nick%.5s}}</i>\n{{vehicle}}</span><textformat>",
          // Own marker or spectated subject.
          // Свой маркер и маркер приёмника камеры наблюдения в случае смерти.
          "oneself": "",
          // Out of radio range ally
          // Союзник, с которым потеряна связь
          "lostally":  "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span>\n<span class='mm_la'> <i>{{vehicle}}</i></span><textformat>",
          // Out of radio range teamkiller
          // Тимкиллер, с которым потеряна связь
          "lostteamkiller":  "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span>\n<span class='mm_lt'> <i>{{vehicle}}</i></span><textformat>",
          // Lost enemy units.
          // Противник, пропавший из засвета
          "lost":  "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span>\n<span class='mm_l'> {{vehicle}}</span><textformat>",
          // Out of radio range squadman
          // Взводный, с которым потеряна связь
          "lostsquad":  "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span><span class='mm_ls'> <i>{{nick%.5s}}\n {{vehicle}}</i></span><textformat>",
          // Мертвый союзник.
          "deadally":  "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span>\n<span class='mm_da'> {{vehicle}}</span><textformat>",
          // Мертвый тимкиллер.
          "deadteamkiller":  "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span>\n<span class='mm_dt'> {{vehicle}}</span><textformat>",
          // Мертвый противник.
          "deadenemy": "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span>\n<span class='mm_de'> {{vehicle}}</span><textformat>",
          // Мертвый взводный.
          "deadsquad": "<textformat leading='-3'><span class='mm_dot'>{{vehicle-class}}</span><span class='mm_ds'> <i>{{nick%.5s}}</i>\n {{vehicle}}</span><textformat>"
        },
        // CSS style (fonts and colors option)
        // CSS стиль (настройка шрифтов и цветов)
        "css": {
          "ally":			".mm_a{font-family:$FieldFont; font-size:8px; color:#C8FFA6;}",
          "teamkiller":		".mm_t{font-family:$FieldFont; font-size:8px; color:#B2F9FF;}",
          "enemy":			".mm_e{font-family:$FieldFont; font-size:8px; color:#FCA9A4;}",
          "squad":			".mm_s{font-family:$FieldFont; font-size:8px; color:#FFD099;}",
          "oneself":		".mm_o{font-family:$FieldFont; font-size:8px; color:#FFFFFF;}",
          "lostally":		".mm_la{font-family:$FieldFont; font-size:8px; color:#C8FFA6;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#9DD977;}",
          "lostteamkiller":	".mm_lt{font-family:$FieldFont; font-size:8px; color:#B2F9FF;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#82D2D9;}",
          "lost":			".mm_l{font-family:$FieldFont; font-size:8px; color:#BFBFBF;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#A6A6A6;}",
          "lostsquad":		".mm_ls{font-family:$FieldFont; font-size:8px; color:#FFD099;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#D9A66C;}",
          "deadally":		".mm_da{font-family:$FieldFont; font-size:8px; color:#789963;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#006100;}",
          "deadteamkiller":	".mm_dt{font-family:$FieldFont; font-size:8px; color:#5B898C;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#06535C;}",
          "deadenemy":		".mm_de{font-family:$FieldFont; font-size:8px; color:#AB736F;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#7D0701;}",
          "deadsquad":		".mm_ds{font-family:$FieldFont; font-size:8px; color:#A68763;} .mm_dot{font-family:XVMSymbol; font-size:15px; color:#8F4F00;}"
        },
        // Fields shadow.
        // Тени полей.
        // "distance"- дистанция тени относительно поля, "angle"- угол тени при дистанции > 0, "alpha"- прозрачность, "blur"- размытие, "strength'- сила.
        "shadow": {
          "ally": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "teamkiller": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "enemy": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "squad": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "oneself": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "lostally": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "lostteamkiller": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "lost": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "lostsquad": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 4 },
          "deadally": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 3 },
          "deadteamkiller": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 3 },
          "deadenemy": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 3 },
          "deadsquad": 
           { "enabled": true, "color": "0x000000", "distance": 0, "angle": 45, "alpha": 80, "blur": 2, "strength": 3 }
        },
        // Field offset relative to current icon (except lost - relative to enemy last seen position).
        // Смещение полей относительно текущей иконки (кроме lost и dead- относительно последних координат видимой позиции).
        "offset": {
          "ally":			{"x": -8, "y": -10.5},
          "teamkiller":		{"x": -4, "y": -5.5},
          "enemy":			{"x": -8, "y": -10.5},
          "squad":			{"x": -8, "y": -10.5},
          "oneself":		{"x":  0, "y": 0},
          "lostally":		{"x": -6, "y": -11},
          "lostteamkiller":	{"x": -6, "y": -11},
          "lost":			{"x": -6, "y": -11},
          "lostsquad":		{"x": -6, "y": -11},
          "deadally":		{"x": -6, "y": -11},
          "deadteamkiller":	{"x": -6, "y": -11},
          "deadenemy":		{"x": -6, "y": -11},
          "deadsquad":		{"x": -6, "y": -11}
        },
        // Прозрачность текстовых полей.
        "alpha" : {
          "ally": 100,
          "teamkiller": 100,
          "enemy": 100,
          "squad": 100,
          "oneself": 100,
          "lostally": 100,
          "lostteamkiller": 100,
          "lost": 100,
          "lostsquad": 100,
          "deadally": 100,
          "deadteamkiller": 100,
          "deadenemy": 0,
          "deadsquad": 100
        }
      },
      // Textfield for map side size. 1000m, 700m, 600m.
      // Поле размера стороны карты. Например, 1000м, 700м, 600м.
      "mapSize": {
        "enabled": false,
        "format": "<b>{{cellsize}}0 м</b>",
        "css": "font-size:10px; color:#FFCC66;",
        "alpha": 80,
        "offsetX": 0,
        "offsetY": 0,
        "shadow": { // Тень.
          "enabled": true,
          "color": "0x000000",
          "distance": 0,
          "angle": 45,
          "alpha": 80,
          "blur": 2,
          "strength": 3
        },
        // Decrease sizes in case of map image weird shrinking while map resize.
        // Increase sizes in case of field being partially cut off.
        // -------------------------------------------------------------------------------------
        // Уменьшайте размеры, если при изменении размера миникарты изображение карты сжимается.
        // Увеличивайте размеры, если содержимое поля обрезается.
        "width": 100,
        "height": 30
      }
    }
}
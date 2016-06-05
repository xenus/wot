/**
 * Capture bar.
 * Полоса захвата.
 */
{
  "shadow": {
    // Цвет.
    "color": "0x000000",
    // Opacity 0-100
    // Прозрачность 0-100
    "alpha": 65,
    // Blur 0-255; 6 is recommended
    // Размытие 0-255; 6 рекомендовано
    "blur": 4,
    // Intensity 0-255; 3 is recommended
    // Интенсивность 0-255; 3 рекомендовано
    "strength": 4
  },
  "captureBar": {
    // false - Disable
    // false - Отключить
    "enabled": true,
    // Change the distance between capture bars
    // Изменение расстояния между полосами захвата
    "distanceOffset": -20,
    // Hide capture progress bar
    // Спрятать полосу прогресса захвата
    "hideProgressBar": false,
    // Enemies capturing ally base
    // Противник захватывает базу союзников
    "enemy": {
      // Сapture bar color (default: use system color)
      // Цвет полосы захвата (по умолчанию используется системный цвет)
      "сolor": null,
      // Title textfield (upper-center)
      // Текстовое поле с заголовком (сверху, среднее)
      "title": {
        // X offset
        // Смещение по X
        "x": 0,
        // Y offset
        // Смещение по Y
        "y": -2,
        // Text format
        // Формат текста
        "format": "<b><font size='{{cap.points>50?16|15}}' color='#FFFFFF'>{{cap.points}}%</font></b>",
        // Full capture text format
        // Формат текста при полном захвате
        "done": "<b><font size='17' color='#FFFFFF'>{{cap.points}}%</font></b>",
        // Fields shadow
        // Тень полей
        "shadow": ${ "shadow" }
      },
      // Vehicles count textfield (upper-left)
      // Текстовое поле с количеством танков (сверху, слева)
      "players": {
        "x": 0,
        "y": 0,
        "format": "<font face='xvm' size='15' color='#FFFFFF'>{{cap.tanks>2?\u0113 \u0113 \u0113|{{cap.tanks>1?\u0113 \u0113|\u0113}}}}</font><b><font size='14' color='#FFCC66'>  {{cap.tanks}}</font></b>", // \u0113
        "done": "<font face='xvm' size='15' color='#FFFFFF'>{{cap.tanks>2?\u0113 \u0113 \u0113|{{cap.tanks>1?\u0113 \u0113|\u0113}}}}</font><b><font size='14' color='#FFCC66'>  {{cap.tanks}}</font></b>",
        "shadow": ${ "shadow" }
      },
      // Timer textfield (upper-right)
      // Текстовое поле с таймером (сверху, справа)
      "timer": {
        "x": 0,
        "y": -1,
        "format": "<font face='xvm' size='{{cap.points>50?16|15}}' color='#FFFFFF'>&#x114;</font>  <font size='{{cap.points>50?15|14}}' color='#FFCC66'><b>{{cap.time}}</b></font>",
        "done": "<font face='xvm' size='{{cap.points>50?16|15}}' color='#FFFFFF'>&#x114;</font>  <font size='{{cap.points>50?15|14}}' color='#FFCC66'><b>{{cap.time}}</b></font>",
        "shadow": ${ "shadow" }
      },
      // Capture points textfield (lower)
      // Текстовое поле с очками захвата (снизу)
      "points": {
        "x": 0,
        "y": 0,
        "format": "",
        "done": "",
        "shadow": ${ "shadow" }
      }
    },
    // Allies capturing enemy base
    // Союзники захватывают базу противника
    "ally": {
      "сolor": null,
      "title": ${"captureBar.enemy.title"},
      "players": ${"captureBar.enemy.players"},
      "timer": ${"captureBar.enemy.timer"},
      "points": ${"captureBar.enemy.points"}
    }
  }
}

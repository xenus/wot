/**
 * Capture bar.
 * Полоса захвата.
 */
{
  // Shadow options
  // Параметры тени
  "shadow": {
    // false - no shadow
    // false - без тени
    "enabled": true,
    "distance": 0,             // (in pixels)     / offset distance / дистанция смещения
    "angle": 0,                // (0.0 .. 360.0)  / offset angle    / угол смещения
    "color": "0x000000",       // "0xXXXXXX"      / color           / цвет
    "alpha": 65,               // (0 .. 100)      / opacity         / прозрачность
    "blur": 4,                 // (0.0 .. 255.0)  / blur            / размытие
    "strength": 4              // (0.0 .. 255.0)  / intensity       / интенсивность
  },
  "captureBar": {
    // false - Disable
    // false - Отключить
    "enabled": true,
    // Y value (34 for vanilla client)
    // Значение Y (34 для чистого клиента)
    "y": 65,
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
        // Shadow options
        // Параметры тени
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

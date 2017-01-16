/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "templates": {
    // Clan icon definition.
    // Шаблон иконки клана.
    "clanIcon": {
      "enabled": false,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": 90, "bindToIcon": true,
      "src": "{{clanicon}}"
    }
  },
  "battleLoading_statisticForm": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "H:i:s",
//------
    // true - Show "chance to win" only for live tanks.
    // true - Показывать шансы только для живых танков.
    "showChancesLive": true,
    // true - Enable display of "chance to win". Read more: http://www.koreanrandom.com/forum/topic/1663-/
    // true - включить отображение шансов на победу. Прочитать подробней: http://www.koreanrandom.com/forum/topic/1663-/
    "showChances": true,
//------
    // true - enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": false,
    // true - disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // Opacity percentage of vehicle icon. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконки танка. 0 - прозрачные, 100 - не прозрачные.
    "vehicleIconAlpha": 100,
    // true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": true,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    // true - убрать отображение типа танка. Пустое место будет использовано под форматируемое поле.
    "removeVehicleTypeIcon": true,
    // true - disable player status icon.
    // true - убрать отображение иконки статуса игрока.
    "removePlayerStatusIcon": false,
    // Show border for name field (useful for config tuning)
    // Показывать рамку для поля имени игрока (полезно для настройки конфига)
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning)
    // Показывать рамку для поля имени танка (полезно для настройки конфига)
    "vehicleFieldShowBorder": false,
    // Show border for frags field (useful for config tuning)
    // Показывать рамку для поля фрагов (полезно для настройки конфига)
    "fragsFieldShowBorder": false,
    // X offset for allies squad icons
    // Смещение по оси X значка взвода союзников
    "squadIconOffsetXLeft": 0,
    // X offset for enemies squad icons field
    // Смещение по оси X значка взвода для противников
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field
    // Смещение по оси X поля ника для союзников
    "nameFieldOffsetXLeft": 0,
    // Width delta for allies player names field
    // Изменение ширины поля ника союзников
    "nameFieldWidthDeltaLeft": 0,
    // X offset for enemies player names field
    // Смещение по оси X поля ника противников
    "nameFieldOffsetXRight": 0,
    // Width delta for enemies player names field
    // Изменение ширины поля ника противников
    "nameFieldWidthDeltaRight": 0,
    // X offset for allies vehicle names field
    // Смещение по оси X поля названия танка союзников
    "vehicleFieldOffsetXLeft": 0,
    // Width delta for allies vehicle names field
    // Изменение ширины поля названия танка союзников
    "vehicleFieldWidthDeltaLeft": 0,
    // X offset for enemies vehicle names field
    // Смещение по оси X поля названия танка противников
    "vehicleFieldOffsetXRight": 0,
    // Width of "formatLeftVehicle" field
    // Ширина поля названия танка союзников
    "vehicleFieldWidthLeft": 250,
    // Width of "formatRightVehicle" field
    // Ширина поля названия танка противников
    "vehicleFieldWidthRight": 250,
    // Width delta for enemies vehicle names field
    // Изменение ширины поля названия танка противников
    "vehicleFieldWidthDeltaRight": 0,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка союзников
    "vehicleIconOffsetXLeft": 0,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка противников
    "vehicleIconOffsetXRight": 0,
    // X offset for allies frags
    // Смещение по оси X фрагов союзников
    "fragsFieldOffsetXLeft": 5,
    // X offset for enemies frags
    // Смещение по оси X фрагов противников
    "fragsFieldOffsetXRight": 0,
    // Width of frags field for allies
    // Ширина поля фрагов союзников
    "fragsFieldWidthLeft": 43,
    // Width of frags field for enemies
    // Ширина поля фрагов противников
    "fragsFieldWidthRight": 43,
    // Width of allies player names field
    // Ширина поля ника союзников
    "nameFieldWidthLeft": 200,
    // Width of enemies names field
    // Ширина поля ника противников
    "nameFieldWidthRight": 200,
    // false - disable highlight of icons during battle start depends on ready state.
    // false - отключить затемнение иконки не загрузившегося игрока.
    "darkenNotReadyIcon": true,
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": "<font color='{{c:tdb}}'>{{tdb%d}}</font> <font color='{{c:t-rating}}'>{{t-rating%2d~%|__%}}</font> | <font color='{{c:rating}}'>{{rating%2d~%|__%}}</font> <font color='{{c:xeff}}'>{{xeff|__}}</font>/<font color='{{c:xwn8}}'>{{xwn8|__}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": "<font color='{{c:xwn8}}'>{{xwn8|__}}</font>/<font color='{{c:xeff}}'>{{xeff|__}}</font> <font color='{{c:rating}}'>{{rating%2d~%|__%}}</font> | <font color='{{c:t-rating}}'>{{t-rating%2d~%|__%}}</font> <font color='{{c:tdb}}'>{{tdb%d}}</font>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftFrags": "{{frags}}",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightFrags": "{{frags}}",
    // Extra fields. Fields are placed one above the other.
    // Дополнительные поля. Поля располагаются друг над другом.
    // Set of formats for left panel (extended format supported, see extra-field.txt)
    // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field.txt)
    "extraFieldsLeft": [
      ${"templates.clanIcon"}
    ],
    // Set of formats for right panel (extended format supported, see extra-field.txt)
    // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field.txt)
    "extraFieldsRight": [
      ${"templates.clanIcon"}
    ]
  }
}

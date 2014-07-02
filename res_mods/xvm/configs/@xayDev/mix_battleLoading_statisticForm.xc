/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "battleLoading_statisticForm": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "H:i:s",
    // true - Show "chance to win" only for live tanks.
    // true - Показывать шансы только для живых танков.
    "showChancesLive": true,
//------
    // true - Enable display of "chance to win". Read more: http://www.koreanrandom.com/forum/topic/1663-/
    // true - включить отображение шансов на победу. Прочитать подробней: http://www.koreanrandom.com/forum/topic/1663-/
    "showChances": true,
    // true - Enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": false,
    // true - Disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // Display options for Team/Clan logos.
    // Параметры отображения иконки игрока/клана.
    "clanIcon": { "alpha": 80, "h": 16, "show": false, "w": 16, "x": 60, "xr": 60, "y": 6, "yr": 6 },
	// Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatLeftNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightNick": "{{name%.20s~..}}<font alpha='#A0'>{{clan}}</font>",
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. readme-ru.txt).
	"formatLeftVehicle": "<font color='{{c:tdb}}'>{{tdb%d}}</font> <font color='{{c:t-rating}}'>{{t-rating%2d~%|__%}}</font> | <font color='{{c:rating}}'>{{rating%2d~%|__%}}</font> <font color='{{c:xeff}}'>{{xeff|__}}</font>/<font color='{{c:xwn8}}'>{{xwn8|__}}</font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. readme-ru.txt).
    "formatRightVehicle": "<font color='{{c:xwn8}}'>{{xwn8|__}}</font>/<font color='{{c:xeff}}'>{{xeff|__}}</font> <font color='{{c:rating}}'>{{rating%2d~%|__%}}</font> | <font color='{{c:t-rating}}'>{{t-rating%2d~%|__%}}</font> <font color='{{c:tdb}}'>{{tdb%d}}</font>"
  }
}
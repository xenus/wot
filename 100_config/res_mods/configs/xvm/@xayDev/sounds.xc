/**
 * Extra sounds settings.
 * Настройки дополнительных звуков.
 * http://www.koreanrandom.com/forum/topic/18955-
 */
{
  "sounds": {
    "enabled": true,
    // List of extra banks to load
    // Use comma for multiple values: ["bank1.bnk", "bank2.bnk"]. Path is relative to ./res_mods/x.x.x/audioww/
    // You can use xvm:// (path relative to /res_mods/mods/shared_resources/xvm/ ) and cfg:// (path relative to /res_mods/configs/xvm/ )
    // Список дополнительных банков для загрузки
    // Несколько банков необходимо указывать через запятую: ["bank1.bnk", "bank2.bnk"]. Путь относителен к ./res_mods/x.x.x/audioww/
    // Разрешено использование xvm:// (путь относительно /res_mods/mods/shared_resources/xvm/ ) и cfg:// (относительно /res_mods/configs/xvm/ )
    "soundBanks": {
      "battle": ["xvm://audioww/xvm.bnk", "xvm://audioww/SM_battleEnd.bnk", "xvm://audioww/SM_crit_damaged.bnk", "xvm://audioww/SM_sight_convergence.bnk", "xvm://audioww/SM_sixthSense.bnk", "xvm://audioww/enemy_fire.bnk"],
//      "battle": "xvm.bnk; SM_ammo_bay.bnk; SM_crit_damaged.bnk; SM_fire_started.bnk; SM_gun_intuition.bnk; SM_sight_convergence.bnk; SM_sixthSense.bnk; SM_battleEnd.bnk; CustomSounds.bnk; enemy_fire.bnk",
      "hangar": ["xvm://audioww/xvm.bnk"]
    },
    // Enable sound events logging in the xvm.log
    // Включить логгирование звуковых событий в xvm.log
    "logSoundEvents": false,
    // Sound events remapping
    // Переопределение звуковых событий
    "soundMapping": {
      // Event mapping
      // Переопределение события
      //"originalEventName": "newEventName"
      // To disable sound event use empty string for value
      // Для отключения звукового события используйте пустую строку для значения
      //"originalEventName": ""
      //
      // Disable original sixth sense light bulb sound event (Variant 1, Variant 2, User sound)
      // Отключить оригинальный звук лампы шестого чувства (Вариант 1, Вариант 2, Пользовательский)
      "lightbulb": "",
      "lightbulb_02": "",
      "sixthSense": "",
      //
      // Disable original enemy detection event      
      // Отключить оригинальный звук обнаружения противника
      //"enemy_sighted_for_team": "",
      //      
      // Disable original fire sound event
      // Отключить оригинальный звук пожара
      //"vo_fire_started": "",
      //
      // Disable original ammo bay damaged event
      // Отключить оригинальный звук повреждения боеукладки
      //"vo_ammo_bay_damaged": "",
      //
      // Disable original notifications informing about the imminent end of the battle event
      // Отключить оригинальный звук оповещения сообщающий о скором завершении боя
      //"time_buzzer_01": "",
      //"time_buzzer_02": "",
      //
      // Sound events added by XVM
      // Звуковые события, добавленные в XVM
      //
      // Sixth sense perk
      // Перк Шестое чувство
      "xvm_sixthSense": "SM_sixthSense_timer",
      // Sixth sense perk for Т-34-85 Rudy
      // Перк Шестое чувство для Т-34-85 Rudy
      "xvm_sixthSenseRudy": "SM_sixthSenseRudy_timer",
      // Enemy detection (Use in together with disable original enemy detection event) 
      // Обнаружение противника (Используйте вместе с отключением оригинального звука обнаружения противника)
      "xvm_enemySighted": "",      
      //"xvm_enemySighted": "xvm_enemySighted",      
      // Fire alert (Use in together with disable original event)
      // Пожар (Используйте вместе с отключением оригинального звука)
      //"xvm_fireAlert": "",
      "xvm_fireAlert": "xvm_fireAlert",
      // Damage ammoBay (Use in together with disable original event)
      // Повреждение боеукладки (Используйте вместе с отключением оригинального звука)
      //"xvm_ammoBay": "",
      "xvm_ammoBay": "xvm_ammoBay",
      // Notifications informing about the imminent end of the battle (Use in together with disable original event)
      // Оповещения сообщающие о скором завершении боя (Используйте вместе с отключением оригинального звука)
      //"xvm_battleEnd_5_min": "",
      "xvm_battleEnd_5_min":  "SM_battleEnd_5_min",
      //"xvm_battleEnd_3_min": "",
      "xvm_battleEnd_3_min":  "SM_battleEnd_3_min",
      //"xvm_battleEnd_2_min": "",
      "xvm_battleEnd_2_min":  "SM_battleEnd_2_min",
      //"xvm_battleEnd_1_min": "",
      "xvm_battleEnd_1_min":  "SM_battleEnd_1_min",
      //"xvm_battleEnd_30_sec": "",
      "xvm_battleEnd_30_sec": "SM_battleEnd_30_sec",
      //"xvm_battleEnd_5_sec": ""
      "xvm_battleEnd_5_sec":  "SM_battleEnd_5_sec",
      //crit_damaged
      "vo_enemy_hp_damaged_by_projectile_and_chassis_damaged_by_player":   "SM_crit_damaged_chassis",
      "vo_enemy_hp_damaged_by_projectile_and_gun_damaged_by_player": 	   "SM_crit_damaged_gun",
      "vo_enemy_no_hp_damage_at_attempt_and_chassis_damaged_by_player":    "SM_crit_damaged_chassis",
      "vo_enemy_no_hp_damage_at_attempt_and_gun_damaged_by_player":        "SM_crit_damaged_gun",
      "vo_enemy_no_hp_damage_at_no_attempt_and_chassis_damaged_by_player": "SM_crit_damaged",
      "vo_enemy_no_hp_damage_at_no_attempt_and_gun_damaged_by_player":     "SM_crit_damaged",
      //gun_intuition
//      "gun_intuition": "SM_gun_intuition",
      //sight_convergence
      "​sight_convergence": "SM_​sight_convergence",
      //enemy_fire_started_by_player
      "vo_enemy_fire_started_by_player": "enemy_fire"
    }
  }
}
/**
 * time_buzzer_01	сирена, сообщение о скором завершении боя, за 2 минуты до окончания
 * time_buzzer_02	сирена, сообщение о скором завершении боя, за 1 минуту до окончания
 * time_countdown	таймер, следует за сиреной time_buzzer_02
 * stereo_trumpet_start	активация стереотрубы
 * camo_net_start	активация маскировочной сети
 */
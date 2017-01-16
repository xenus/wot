{
  "infoPanel": {
    "delay": 5,
    "altKey": 56,
    "AliveOnly": true,
    "formats": [
      "{{vehicle_name}}
      <br/>{{gun_reload_equip}}с
      <br/><img src='img://gui/maps/icons/vehicle/{{icon_system_name}}.png'>
      <br/><textformat tabstops='[95]'>Масса: {{vehicle_weight}}т<tab>Обзор: {{vision_radius}}м</textformat>
      <br/><textformat tabstops='[65,105,145]'>Корпус:<tab>{{armor_hull_front}}<tab>{{armor_hull_side}}<tab>{{armor_hull_back}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Башня:<tab>{{armor_turret_front}}<tab>{{armor_turret_side}}<tab>{{armor_turret_back}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Тип:<tab>{{shell_type_1}}<tab>{{shell_type_2}}<tab>{{shell_type_3}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Пробитие:<tab>{{shell_power_1}}<tab>{{shell_power_2}}<tab>{{shell_power_2}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Урон:<tab>{{shell_damage_1}}<tab>{{shell_damage_2}}<tab>{{shell_damage_3}}</textformat>",
      "<font color='#F0F0F0'><b>{{vehicle_name}}</b></font>
      <br/><textformat tabstops='[80]'><font color='#14AFF1'>{{gun_reload_equip}} сек.</font><tab><font color='#96CC29'>{{vision_radius}} м.</font></textformat>",
      "{{vehicle_name}} <font color={{py:self_vehicle_weight={{py:vehicle_weight}}?'#F0F0F0'|{{py:self_vehicle_weight>{{py:vehicle_weight}}?'#00FF00'|'#FFFF00'}}}}>Масса: {{vehicle_weight}} т.</font>
      <br/>   {{gun_name}}
      <br/>{{py:gun_clip=1?|{{gun_clip_reload}}({{gun_clip}})/}}{{gun_reload_equip}} сек ({{shell_damage_1}}/{{shell_power_1}})",
      "<font color={{py:self_vehicle_weight={{py:vehicle_weight}}?'#F0F0F0'|{{py:self_vehicle_weight>{{py:vehicle_weight}}?'#00FF00'|'#FFFF00'}}}}>{{self_vehicle_weight}} {{py:self_vehicle_weight={{py:vehicle_weight}}?=|{{py:self_vehicle_weight>{{py:vehicle_weight}}?&gt;|&lt;}}}} {{vehicle_weight}}</font>",
      "{{vehicle_name}}
      <br/>{{py:gun_clip=1?|{{gun_clip_reload}}({{gun_clip}})/}}{{gun_reload_equip}}с
      <br/><img src='img://gui/maps/icons/vehicle/{{icon_system_name}}.png'>
      <br/><textformat tabstops='[95]'><font color={{py:self_vehicle_weight={{py:vehicle_weight}}?'#F0F0F0'|{{py:self_vehicle_weight>{{py:vehicle_weight}}?'#00FF00'|'#FFFF00'}}}}>Масса: {{vehicle_weight}}т.</font><tab>Обзор: {{vision_radius}}м</textformat>
      <br/><textformat tabstops='[65,105,145]'>Корпус:<tab>{{armor_hull_front}}<tab>{{armor_hull_side}}<tab>{{armor_hull_back}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Башня:<tab>{{armor_turret_front}}<tab>{{armor_turret_side}}<tab>{{armor_turret_back}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Тип:<tab>{{shell_type_1}}<tab>{{shell_type_2}}<tab>{{shell_type_3}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Пробитие:<tab>{{shell_power_1}}<tab>{{shell_power_2}}<tab>{{shell_power_2}}</textformat>
      <br/><textformat tabstops='[65,105,145]'>Урон:<tab>{{shell_damage_1}}<tab>{{shell_damage_2}}<tab>{{shell_damage_3}}</textformat>"
    ]
  }
}
/**
//макросы
  {{target}}		{{vehicle_name}}
  {{target-gun}}	{{gun_name}}
  {{target-reload-100}}	{{gun_reload_equip}}
  {{damage-1}}		{{shell_damage_1}}
  {{power-1}}		{{shell_power_1}}

{{gun_clip}}
{{gun_clip_reload}}

{{alive?{{ready?#FF|#80}}|#80}}
{{gun_clip?{{gun_clip_reload}}сек|{{gun_clip_reload}}sec}}

{{gun_clip=1?{{gun_clip_reload}}сек|{{gun_clip_reload}}sec}}
{{gun_clip:10<=1?{{gun_clip_reload}}сек|{{gun_clip_reload}}sec}}

{{gun_clip%.1d}}
[%[flag][width][.prec]type]

mode=0?65|40

{{gun_clip=1?{{gun_reload_equip}} сек|{{gun_reload_equip}}/{{gun_clip_reload}} sec}}

      <br/>{{gun_reload_equip}} сек ({{shell_damage_1}}/{{shell_power_1}})
      <br/>{{py:gun_clip=1?{{gun_clip_reload}}сек|{{gun_clip_reload}}sec}}
      <br/>{{gun_reload_equip}}{{py:gun_clip=1? сек|({{py:gun_clip_reload}}) sec}}
      <br/>{{py:gun_clip=1?{{gun_reload_equip}} сек|{{gun_reload_equip}}
2(6)/40.0 сек ({{shell_damage_1}}/{{shell_power_1}})
40.0 сек ({{shell_damage_1}}/{{shell_power_1}})
<br/>{{py:gun_clip=1?|{{gun_clip_reload}}({{gun_clip}})/}}{{gun_reload_equip}} сек ({{shell_damage_1}}/{{shell_power_1}})
{{py:vehicle_weight}}

      <br/>{{py:vehicle_weight}}_{{self_vehicle_weight}}
      <br/>{{py:vehicle_weight}} {{py:vehicle_weight>{{self_vehicle_weight}}?>|<}} {{self_vehicle_weight}}
{{py:vehicle_weight={{self_vehicle_weight}}?=|{{py:vehicle_weight>{{self_vehicle_weight}}?>|<}}}}

{{py:self_vehicle_weight}}
{{py:vehicle_weight}}
{{self_vehicle_weight}}
{{vehicle_weight}}

mode=0?65|40
      <br/>{{py:self_vehicle_weight={{py:vehicle_weight}}?0|{{py:self_vehicle_weight>{{py:vehicle_weight}}?+1|-1}}}}

{{self_vehicle_weight}} {{py:self_vehicle_weight={{py:vehicle_weight}}?=|{{py:self_vehicle_weight>{{py:vehicle_weight}}?>|<}}}} {{vehicle_weight}}

<font color={{py:self_vehicle_weight={{py:vehicle_weight}}?'#F0F0F0'|{{py:self_vehicle_weight>{{py:vehicle_weight}}?'#00FF00'|'#FFFF00'}}}}>{{self_vehicle_weight}} {{py:self_vehicle_weight={{py:vehicle_weight}}?=|{{py:self_vehicle_weight>{{py:vehicle_weight}}?>|\<}}}} {{vehicle_weight}}</font>

poor="0xFFFF00" good="0x00FF00"

*/
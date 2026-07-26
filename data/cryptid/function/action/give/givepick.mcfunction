#give @s warped_fungus_on_a_stick[custom_name='["",{"text":"Artery Carver","italic":false,"color":"red"}]',lore=['["",{"text":"Carves through flesh with ease.","italic":false,"color":"gray"}]','[""]','["",{"text":"<Shift Right Click> ","italic":false,"color":"dark_red"},{"text":"- To look","italic":false,"color":"gray"}]','["",{"text":"in the direction of the nearest heart","italic":false,"color":"gray"}]','["",{"text":"at the cost of health. ","italic":false,"color":"gray"}]'],attribute_modifiers={modifiers:[{type:"player.mining_efficiency",amount:3,slot:mainhand,operation:add_value,id:1749690032320}],show_in_tooltip:false},tool={default_mining_speed:1.5,damage_per_block:1,rules:[{blocks:[netherrack,nether_wart_block,red_terracotta,obsidian,stone],speed:2f,correct_for_drops:1b},{blocks:[iron_ore,coal_ore,gold_ore,redstone_ore,deepslate_iron_ore,deepslate_gold_ore,deepslate_redstone_ore,deepslate_coal_ore],speed:1.5f,correct_for_drops:1b}]},max_damage=600,custom_model_data=1305,custom_data={cryptid.item:1b,cryptid.pickaxe:1},fire_resistant={}]

give @s warped_fungus_on_a_stick[custom_name='["",{"text":"Artery Carver","italic":false,"color":"red"}]',lore=['["",{"color":"gray","italic":false,"text":"Carves through flesh with ease."}]','[""]','["",{"color":"dark_red","italic":false,"text":" "},{"text":"<Shift Right Click> ","italic":false,"color":"dark_red"},{"text":"- To look","italic":false,"color":"gray"}]','["",{"color":"gray","italic":false,"text":"in the direction of the nearest heart"}]','["",{"color":"gray","italic":false,"text":"at the cost of health. "}]'],fire_resistant={},custom_model_data=1305,custom_data={cryptid.item:1b,cryptid.pickaxe:1},tool={default_mining_speed:1,damage_per_block:1,rules:[{speed:11.5f,correct_for_drops:true,blocks:"#cryptid:fleshy"},{speed:20f,blocks:["obsidian","crying_obsidian"]},{speed:5f,correct_for_drops:true,blocks:"#minecraft:mineable/pickaxe"}]},max_damage=1600,] 1

{
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:item",
          "name": "minecraft:warped_fungus_on_a_stick",
          "functions": [
            {
              "function": "minecraft:set_components",
              "components": {
                "minecraft:custom_data": "{cryptid.item:1b,cryptid.blade:1}",
                "minecraft:custom_model_data": 1301,
                "minecraft:custom_name": "[\"\",{\"text\":\"Steel Torment\",\"italic\":false,\"color\":\"red\"}]",
                "minecraft:lore": [
                  "[\"\",{\"text\":\"The blade is \",\"italic\":false,\"color\":\"dark_red\"},{\"text\":\"ice cold\",\"bold\":true,\"italic\":false,\"color\":\"aqua\"},{\"text\":\" to the touch\",\"italic\":false,\"color\":\"dark_red\"}]",
                  "[\"\"]",
                  "[\"\",{\"text\":\"<Shift Right Click>\",\"italic\":false,\"color\":\"dark_red\"},{\"text\":\" - Clear away\",\"italic\":false,\"color\":\"gray\"}]",
                  "[\"\",{\"text\":\"a large area of flesh, cleansing the area.\",\"italic\":false,\"color\":\"gray\"}]",
                  "[\"\"]",
                  "[\"\",{\"text\":\"<Attack>\",\"italic\":false,\"color\":\"dark_red\"},{\"text\":\" - Apply slowness and bleed\",\"italic\":false,\"color\":\"gray\"}]",
                  "[\"\",{\"text\":\"to the affected cryptid.\",\"italic\":false,\"color\":\"gray\"}]"
                ],
                "minecraft:item_name": "[\"\",{\"text\":\"Steel Torment\",\"italic\":false,\"color\":\"red\"}]",
                "minecraft:rarity": "rare",
                "minecraft:attribute_modifiers": {
                  "modifiers": [
                    {
                      "type": "generic.attack_damage",
                      "amount": 4.5,
                      "slot": "mainhand",
                      "operation": "add_value",
                      "id": 1747965463588
                    },
                    {
                      "type": "generic.attack_speed",
                      "amount": -1.6,
                      "slot": "mainhand",
                      "operation": "add_value",
                      "id": 1747965463539
                    }
                  ],
                  "show_in_tooltip": 0
                },
                "minecraft:unbreakable": {
                  "show_in_tooltip": 0
                }
              }
            }
          ]
        }
      ]
    }
  ]
}
#enable toggle and help for everyone
scoreboard players enable @a sc.toggle
scoreboard players enable @a sc.help
#end

#sc.help
execute as @a[scores={sc.help=1..}] run function sc:help
scoreboard players reset @a[scores={sc.help=1..}] sc.help
#end

#death message in chat
execute as @a if score @s sc.death matches 1.. unless score @s sc.toggle matches 2 run tellraw @s [{"text": "","color": "gold"},{"text": "You died at ","color": "#FF7B00"},{"text":"XYZ: ","color": "#FF7B00"},{"score":{"name": "@s","objective": "sc.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "sc.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "sc.z","value": "0"}}]
scoreboard players reset @a[scores={sc.death=1..}] sc.death
#end

#get X Y Z
execute as @a store result score @s sc.x run data get entity @s Pos[0]
execute as @a store result score @s sc.y run data get entity @s Pos[1]
execute as @a store result score @s sc.z run data get entity @s Pos[2]
#end

#actionbar
execute as @a unless score @s sc.toggle matches 1..2 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "sc.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "sc.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "sc.z","value": "0"}}]
#end


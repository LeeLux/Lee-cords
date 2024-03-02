#checking how many players are online(singleplayer oder multiplayer)
execute store result score #lcords.playercount lcords.help run execute if entity @a
#end

#enable toggle and help for everyone
scoreboard players enable @a lcords.toggle
scoreboard players enable @a lcords.help
scoreboard players enable @a lcords.cords
execute unless score #lcords.playercount lcords.help matches 1 run scoreboard players enable @a lcords.send
#end

#lcords.help
execute as @a[scores={lcords.help=1..}] run function lcords:help
scoreboard players reset @a[scores={lcords.help=1..}] lcords.help
#end

#death message in chat
execute as @a if score @s lcords.death matches 1.. unless score @s lcords.toggle matches 2 run tellraw @s [{"text": "","color": "gold"},{"text": "You died at ","color": "#FF7B00"},{"text":"XYZ: ","color": "#FF7B00"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}}]
scoreboard players reset @a[scores={lcords.death=1..}] lcords.death
#end

#get X Y Z
execute as @a store result score @s lcords.x run data get entity @s Pos[0]
execute as @a store result score @s lcords.y run data get entity @s Pos[1]
execute as @a store result score @s lcords.z run data get entity @s Pos[2]
#end

#trigger lcords.cords
execute as @a if score @s lcords.cords matches 1.. run tellraw @s [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " in dimension: ","color": "gold"},{"nbt":"Dimension","entity":"@s","color": "green"}]
scoreboard players reset @a[scores={lcords.cords=1..}] lcords.cords
#end

#trigger lcords.send
execute as @a if score @s lcords.send matches 1.. run tellraw @a [{"text": "","color": "white"},{"text": "Player: ","color": "gold"},{"selector":"@s","color": "green"},{"text":" XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " in dimension: ","color": "gold"},{"nbt":"Dimension","entity":"@s","color": "green"}]
scoreboard players reset @a[scores={lcords.send=1..}] lcords.send
#end

#pitch
execute as @a store result score @s lcords.pitch run data get entity @s Rotation[1]
execute as @a at @s run function lcords:light
#end

#actionbar
execute as @a unless score @s lcords.toggle matches 1..2 run function lcords:actionbar
#end

#yaw
execute as @a store result score @s lcords.yaw run data get entity @s Rotation[0]
#end
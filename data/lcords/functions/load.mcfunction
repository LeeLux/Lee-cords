
#text
tellraw @a [{"text": "","color": "#FF7B00"},{"text": "Datapack: "},{"text": "Lee cords","color": "gold"},{"text": " started!"},{"text": " (v0.6)","color": "gold"}]

execute as @a[gamemode=creative] run tellraw @s [{"text": "","color": "gold"},{"text": "Change direction text in actionbar: ","color": "#FF7B00"},{"text": "[default] ","clickEvent": {"action": "run_command","value": "/data merge storage lcords {direction: [\"N\", \"E\", \"S\", \"W\"]}"},"hoverEvent": {"action": "show_text","value": {"text": "Set to default (N, E, S, W)","color": "gray"}}},{"text": "[long] ","clickEvent": {"action": "run_command","value": "/data merge storage lcords {direction: [\"North\", \"East\", \"South\", \"West\"]}"},"hoverEvent": {"action": "show_text","value": {"text": "Set to (North, East, South, West)","color": "gray"}}},{"text": "[redstone] ","clickEvent": {"action": "run_command","value": "/data merge storage lcords {direction: [\"Z-\", \"X+\", \"Z+\", \"X-\"]}"},"hoverEvent": {"action": "show_text","value": {"text": "Set to (Z-, X+, Z+, X-)","color": "gray"}}},{"text": "[get command]","clickEvent": {"action": "suggest_command","value": "/data merge storage lcords {direction: [\"1\", \"2\", \"3\", \"4\"]}"},"hoverEvent": {"action": "show_text","value": {"text": "Get the command to change by you selfe","color": "gray"}}}]
#end

#creating scoreboads
scoreboard objectives add lcords.toggle trigger
scoreboard objectives add lcords.help trigger
scoreboard objectives add lcords.death deathCount
scoreboard objectives add lcords.dim dummy

scoreboard objectives add lcords.x dummy
scoreboard objectives add lcords.y dummy
scoreboard objectives add lcords.z dummy

scoreboard objectives add lcords.cords trigger
scoreboard objectives add lcords.send trigger

scoreboard objectives add lcords.yaw dummy
scoreboard objectives add lcords.pitch dummy
scoreboard objectives add lcords.light dummy
#end

#storage
execute unless score #firstinstall lcords.help matches 1 run data merge storage lcords {direction: ["N", "E", "S", "W"]}
scoreboard players set #firstinstall lcords.help 1
#end
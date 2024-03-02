#checkts for rotation
#backup
title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}}]
#normal
#north -
execute if score @s lcords.yaw matches -180..-136 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " "},{"nbt":"direction[0]","storage":"lcords","color": "gold"}]
#east
execute if score @s lcords.yaw matches -136..-45 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " "},{"nbt":"direction[1]","storage":"lcords","color": "gold"}]
#south
execute if score @s lcords.yaw matches -44..45 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " "},{"nbt":"direction[2]","storage":"lcords","color": "gold"}]
#west
execute if score @s lcords.yaw matches 46..135 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " "},{"nbt":"direction[3]","storage":"lcords","color": "gold"}]
#north +
execute if score @s lcords.yaw matches 136..180 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " "},{"nbt":"direction[0]","storage":"lcords","color": "gold"}]

execute as @a if score @s lcords.pitch matches 90 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " Light: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.light","value": "0"}}]
execute as @a if score @s lcords.pitch matches -90 run title @s actionbar [{"text": "","color": "white"},{"text":"XYZ: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.x","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.y","value": "0"}},{"text": " "},{"score":{"name": "@s","objective": "lcords.z","value": "0"}},{"text": " Light: ","color": "gold"},{"score":{"name": "@s","objective": "lcords.light","value": "0"}}]
#end
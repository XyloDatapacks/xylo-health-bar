execute if score $xylo_health_bar xvc.load_status matches 1 run tellraw @a ["",{"storage":"xvc_version:op","nbt":"packs[{namespace:xylo_health_bar}].name","color":"aqua"},": loaded"]
execute if score $xylo_health_bar xvc.load_status matches 0 run tellraw @a ["",{"storage":"xvc_version:op","nbt":"packs[{namespace:xylo_health_bar}].name","color":"aqua"},": failed to load"]
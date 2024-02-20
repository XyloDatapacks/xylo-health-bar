#> xylo_health_bar:bar/tick_mob
# @context: health bar text display
# @within: xylo_health_bar:tick

# dispose if time passed
execute if score #xlib.time xlib.op >= @s xhb.health_bar.end_time run return run function xylo_health_bar:bar/dispose
# dispose if entity died 
execute if predicate xylo_library:no_vehicle run return run function xylo_health_bar:bar/dispose

# update health
execute store result score @s xhb.health_bar.health on vehicle run data get entity @s Health 1
execute store result score @s xhb.health_bar.max_health on vehicle run attribute @s generic.max_health get 1
execute on vehicle run scoreboard players operation #xrpgc.level xrpgc.op = @s xrpgc.level

# update display
execute unless score $xylo_rpg_core xvc.load_status matches 1 run data modify entity @s text set value '[{"score":{"objective":"xhb.health_bar.health","name":"@s"}}," / ",{"score":{"objective":"xhb.health_bar.max_health","name":"@s"}}]'
execute if score $xylo_rpg_core xvc.load_status matches 1 run data modify entity @s text set value '["lvl",{"score":{"objective":"xrpgc.op","name":"#xrpgc.level"}}," | ",{"score":{"objective":"xhb.health_bar.health","name":"@s"}}," / ",{"score":{"objective":"xhb.health_bar.max_health","name":"@s"}}]'

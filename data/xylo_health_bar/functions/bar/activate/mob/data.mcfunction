#> xylo_health_bar:bar/activate/mob/data
# @context: health bar
# @within: xylo_health_bar:bar/activate/mob/start


scoreboard players operation @s xhb.health_bar.end_time = #xlib.time xlib.op
scoreboard players add @s xhb.health_bar.end_time 100

tag @s remove xhb.health_bar_new


execute store result score #_ ScoreToHealth run attribute @s minecraft:generic.max_health get 100
execute store result score #__ ScoreToHealth run data get entity @s Health 100
scoreboard players operation #__ ScoreToHealth -= #_ ScoreToHealth

execute if score #__ ScoreToHealth matches ..0 unless entity @s[tag=ScoreToHealth.AntiGlitch.UnsafeTick] run function score_to_health:modify
tag @s remove ScoreToHealth.AntiGlitch.UnsafeTick
execute if score #__ ScoreToHealth matches 1.. run function score_to_health:anti_glitch/protect

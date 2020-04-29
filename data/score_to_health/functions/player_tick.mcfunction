
execute if entity @s[tag=ScoreToHealth.Modified] run function score_to_health:restore
execute unless entity @s[tag=ScoreToHealth.Return] if score @s ScoreToHealth matches -2147483648.. run function score_to_health:check
tag @s[tag=ScoreToHealth.Return] remove ScoreToHealth.Return
advancement revoke @s only score_to_health:player_tick

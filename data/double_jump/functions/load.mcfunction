#scoreboard objectives remove double_jump_shift
#scoreboard objectives add double_jump_shift custom:sneak_time

scoreboard objectives remove jetpack.sneaking
scoreboard objectives add jetpack.sneaking custom:sneak_time
scoreboard objectives remove jetpack.vars
scoreboard objectives add jetpack.vars dummy
scoreboard objectives remove jetpack.title
scoreboard objectives add jetpack.title dummy

scoreboard players remove #-240 jetpack.vars 240
scoreboard players remove #-1 jetpack.vars 1
scoreboard players add #100 jetpack.vars 100
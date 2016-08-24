/*/ 
 * 
 * MORPH MOD FOR VANILLA MINECRAFT (v1.11 +)
 * Made by rotemoses202(@RoteMinecraftIL) and 78yony78 (@78yoni78).
 * Converted from Structure Block form (.nbt) to One Command form (/summon, .txt) by rotemoses202 (@RoteMinecraftIL).
 * One Command generated by MrGarretto's Command Combiner ( https://mrgarretto.com/cmdcombiner ).
 * Converted form 1.10 format(WitherBoss) to 1.11 format(wither) using MrGarretto's Entity Converter ( https://mrgarretto.com/entityconverter )
 * 
/*/

< // Scoreboard deletion commands (Objectives & teams, INIT)
/*INIT:
/scoreboard objectives remove Sneakers
/scoreboard objectives remove LOLCatPow
/scoreboard objectives remove TalkingFish
/scoreboard teams remove TeaMorph
*/
> //END

< // Initial commands (scoreboards, INIT)
TAG#1:/scoreboard objectives add LOLCatPow dummy
/scoreboard objectives add TalkingFish dummy
/scoreboard objectives add Sneakers stat.sneakTime
/scoreboard players set @p LOLCatPow 0
/scoreboard teams add TeaMorph
/scoreboard teams join TeaMorph @p
COND:/scoreboard teams option TeaMorph friendlyfire false
COND:/scoreboard teams option TeaMorph seeFriendlyInvisibles false
COND:/scoreboard teams option TeaMorph collisionRule pushOwnTeam
/setblock @TAG-1 minecraft:stone
> //END

< // Flying Mobs cannot be morphed into
R:/scoreboard players set @e[type=ender_dragon] TalkingFish 0
R:/scoreboard players set @e[type=Bat] TalkingFish 0
R:/scoreboard players set @e[type=wither] TalkingFish 0
R:/scoreboard players set @e[type=Ghast] TalkingFish 0
>

< // 1st circuit
R:/execute @p[score_LOLCatPow=0] ~ ~ ~ /scoreboard players set @e[type=!Player,r=1] TalkingFish 1
COND:/scoreboard players set @p LOLCatPow 1
>

< // 2nd circuit
R:/execute @p[score_LOLCatPow_min=1] ~ ~ ~ /teleport @e[score_TalkingFish_min=1] ~ ~ ~ ~ ~
COND:/effect @e[score_TalkingFish_min=1] minecraft:resistance 1 127 true
COND:/scoreboard teams join TeaMorph @e[score_TalkingFish_min=1]
COND:/effect @p minecraft:invisibility 1 1 true
COND:/entitydata @e[score_TalkingFish_min=1] {NoAI:1,CanPickUpLoot:0b}
COND:/tellraw @p {"text":"\n\nPress SNEAK to dismount"}
>

< // 3rd circuit
R:/scoreboard players set @p[score_Sneakers_min=1] Sneakers 0
COND:/scoreboard players set @e[score_TalkingFish_min=1] TalkingFish 0
COND:/scoreboard players set @p LOLCatPow 0
COND:/execute @p ~ ~ ~ /teleport @e[type=!Player,r=1] ~2 ~2 ~1
COND:/execute @p ~ ~ ~ /scoreboard teams leave TeaMorph @e[type=!Player]
R:/entitydata @e[score_TalkingFish=0] {NoAI:0,CanPickUpLoot:0b}
>
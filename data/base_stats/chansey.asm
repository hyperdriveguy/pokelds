	dw CHANSEY ; 113

	db 250,  05,  05,  50,  35, 105
	;   hp  atk  def  spd  sat  sdf
	db %11000000 ; EV Yield

	db NoRMAL, NoRMAL
	db 30 ; catch rate
	db 255 ; base exp
	db No_ITEM ; item 1
	db LUCKY_EGG ; item 2
	db 254 ; gender
	db 100 ; unknown
	db 40 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db FAST ; growth rate
	dn FAIRYEGG, FAIRYEGG ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNoN, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNoRE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, PSYCHIC, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, DEFENSE_CURL, DREAM_EATER, REST, ATTRACT, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end

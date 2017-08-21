	dw SNUBBULL ; 209

	db  60,  80,  50,  30,  40,  40
	;   hp  atk  def  spd  sat  sdf
	db %01000000 ; EV Yield

	db FAIRY, FAIRY
	db 190 ; catch rate
	db 63 ; base exp
	db No_ITEM ; item 1
	db No_ITEM ; item 2
	db 191 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db FAST ; growth rate
	dn FIELD, FAIRYEGG ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNoN, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNoRE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, DEFENSE_CURL, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, THUNDERBOLT
	; end

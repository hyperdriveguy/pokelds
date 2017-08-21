	dw ELEKID ; 239

	db  45,  63,  37,  95,  65,  55
	;   hp  atk  def  spd  sat  sdf
	db %00010000 ; EV Yield

	db ELECTRIC, ELECTRIC
	db 45 ; catch rate
	db 106 ; base exp
	db No_ITEM ; item 1
	db No_ITEM ; item 2
	db 63 ; gender
	db 100 ; unknown
	db 25 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn No_EGGS, No_EGGS ; egg groups

	; tmhm
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNoN, HIDDEN_POWER, SNoRE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, PSYCHIC, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FIRE_PUNCH, FLASH, THUNDERBOLT
	; end

	dw ZAPDOS ; 145

	db  90,  90,  85, 100, 125,  90
	;   hp  atk  def  spd  sat  sdf
	db %00001110 ; EV Yield

	db ELECTRIC, FLYING
	db 3 ; catch rate
	db 216 ; base exp
	db No_ITEM ; item 1
	db No_ITEM ; item 2
	db 255 ; gender
	db 100 ; unknown
	db 80 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn No_EGGS, No_EGGS ; egg groups

	; tmhm
	tmhm CURSE, ROAR, TOXIC, ZAP_CANNoN, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNoRE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, DETECT, REST, STEEL_WING, FLY, FLASH, THUNDERBOLT
	; end

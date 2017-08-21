	dw PORYGON ; 137

	db  65,  60,  70,  40,  85,  75
	;   hp  atk  def  spd  sat  sdf
	db %00001000 ; EV Yield

	db NoRMAL, NoRMAL
	db 45 ; catch rate
	db 130 ; base exp
	db No_ITEM ; item 1
	db No_ITEM ; item 2
	db 255 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 6, 6 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn INANIMATE, INANIMATE ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, ZAP_CANNoN, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNoRE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, PSYCHIC, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, REST, THIEF, NIGHTMARE, FLASH, THUNDERBOLT, ICE_BEAM
	; end

	dw PIDGEOT ; 018

	db  83,  80,  75, 101,  70,  70
	;   hp  atk  def  spd  sat  sdf
	db %00011100 ; EV Yield

	db NoRMAL, FLYING
	db 45 ; catch rate
	db 172 ; base exp
	db No_ITEM ; item 1
	db No_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 15 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_SLOW ; growth rate
	dn AVIAN, AVIAN ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNoRE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DETECT, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end

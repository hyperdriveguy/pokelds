	dw NIDORAN_M ; 032

	db  46,  57,  40,  50,  40,  40
	;   hp  atk  def  spd  sat  sdf
	db %01000000 ; EV Yield

	db POISON, POISON
	db 235 ; catch rate
	db 60 ; base exp
	db No_ITEM ; item 1
	db No_ITEM ; item 2
	db 0 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_SLOW ; growth rate
	dn MONSTER, FIELD ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNoRE, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DEFENSE_CURL, DETECT, REST, ATTRACT, THIEF, THUNDERBOLT
	; end

	dw CYNDAQUIL ; 155

	db  39,  52,  43,  65,  60,  50
	;   hp  atk  def  spd  sat  sdf
	db %00010000 ; EV Yield

	db FIRE, FIRE
	db 45 ; catch rate
	db 65 ; base exp
	db No_ITEM ; item 1
	db No_ITEM ; item 2
	db 31 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_SLOW ; growth rate
	dn FIELD, FIELD ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNoRE, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, DEFENSE_CURL, DETECT, REST, ATTRACT, CUT, FLAMETHROWER
	; end

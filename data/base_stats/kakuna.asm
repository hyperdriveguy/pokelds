	dw KAKUNA ; 014

	db  45,  25,  50,  35,  25,  25
	;   hp  atk  def  spd  sat  sdf
	db %00110000 ; EV Yield

	db BUG, POISON
	db 120 ; catch rate
	db 71 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 15 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn INSECT, INSECT ; egg groups

	; tmhm
	tmhm
	; end

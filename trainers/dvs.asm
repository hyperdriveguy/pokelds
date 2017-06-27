GetTrainerDVs: ; 270c4
; Return the DVs of OtherTrainerClass in bc and de

	push hl
	ld a, [OtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassDVs
	add hl, bc
	add hl, bc
;convert the old DV format to modern IV format
	ld a, [hl]
	swap a
	or $F
	ld b, a
	ld a, [hli]
	or $F
	ld c, a
	ld a, [hl]
	swap a
	or $F
	ld d, a
	ld a, [hl]
	or $F
	ld e, a
	;byte 1
	and %00001000
	rrca
	ld h, a
	ld a, d
	and %00001000
	or h
	ld h, a
	ld a, c
	and %00001000
	rlca
	or h
	ld h, a
	ld a, b
	and %00001000
	rlca
	rlca
	or h
	ld h, a
	ld a, b
	and %00001000
	rrca
	rrca
	rrca
	or b
	or h
	ld h, a
	swap b
	ld a, b
	or c
	ld b, h
	ld c, a
	swap d
	srl d
	ld a, e
	srl a
	srl a
	or d
	ld d, a
	ld a, e
	swap a
	sla a
	or e
	sla a
	ld e, a
	pop hl
	ld a, $C0;make shinies impossible for trainer npc's
	or b
	ld b, a
	ret
; 270d6

TrainerClassDVs: ; 270d6
	;  Atk  Spd
	;  Def  Spc
	db $9A, $77 ; falkner
	db $88, $88 ; bugsy
	db $98, $88 ; whitney
	db $98, $88 ; morty
	db $98, $88 ; pryce
	db $98, $88 ; jasmine
	db $98, $88 ; chuck
	db $7C, $DD ; clair
	db $DD, $DD ; rival1
	db $98, $88 ; pokemon prof
	db $DC, $DD ; will
	db $DC, $DD ; cal
	db $DC, $DD ; bruno
	db $7F, $DF ; karen
	db $DC, $DD ; koga
	db $DC, $DD ; champion
	db $98, $88 ; brock
	db $78, $88 ; misty
	db $98, $88 ; lt surge
	db $98, $88 ; scientist
	db $78, $88 ; erika
	db $98, $88 ; youngster
	db $98, $88 ; schoolboy
	db $98, $88 ; bird keeper
	db $58, $88 ; lass
	db $98, $88 ; janine
	db $D8, $C8 ; cooltrainerm
	db $7C, $C8 ; cooltrainerf
	db $69, $C8 ; beauty
	db $98, $88 ; pokemaniac
	db $D8, $A8 ; gruntm
	db $98, $88 ; gentleman
	db $98, $88 ; skier
	db $68, $88 ; teacher
	db $7D, $87 ; sabrina
	db $98, $88 ; bug catcher
	db $98, $88 ; fisher
	db $98, $88 ; swimmerm
	db $78, $88 ; swimmerf
	db $98, $88 ; sailor
	db $98, $88 ; super nerd
	db $98, $88 ; rival2
	db $98, $88 ; guitarist
	db $A8, $88 ; hiker
	db $98, $88 ; biker
	db $98, $88 ; blaine
	db $98, $88 ; burglar
	db $98, $88 ; firebreather
	db $98, $88 ; juggler
	db $98, $88 ; blackbelt
	db $D8, $A8 ; executivem
	db $98, $88 ; psychic
	db $6A, $A8 ; picnicker
	db $98, $88 ; camper
	db $7E, $A8 ; executivef
	db $98, $88 ; sage
	db $78, $88 ; medium
	db $98, $88 ; boarder
	db $98, $88 ; pokefanm
	db $68, $8A ; kimono girl
	db $68, $A8 ; twins
	db $6D, $88 ; pokefanf
	db $FD, $DE ; red
	db $9D, $DD ; blue
	db $98, $88 ; officer
	db $7E, $A8 ; gruntf
	db $98, $88 ; mysticalman
; 2715c

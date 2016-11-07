KillParty: ; c658
	ld a, [wNuzlockeMode]
	cp 0
	ret z
	xor a
	ld b, a;this will be the number of pokemon that can fight still
	ld [CurPartyMon], a
	ld hl, PartySpecies
.loop
	ld a, [hli]
	cp -1
	jr z, .done
	cp EGG
	jr z, .next
	
	push hl
	call KillPartyMon
	pop hl

.next
	ld a, [CurPartyMon]
	inc a
	ld [CurPartyMon], a
	jr .loop

.done
	ld a, b
	cp 0
	ret nz
	callba EmptyAllSRAMBanks
	ld a, $11
	jp Start

KillPartyMon: ; c677
	push bc
	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld d, h
	ld e, l

	ld hl, MON_MAXHP
	add hl, de
	dec hl
	dec hl

	pop bc
	inc b
	ld a, [hli]
	or [hl]
	ret nz
	dec b
	push bc
	ld a, [PartyCount]
	dec a
	jr nz, .notgameover
	ld [PartyCount], a
	dec a
	ld [PartyCount+1], a	
	jr .finish
.notgameover
	xor a
	ld [wPokemonWithdrawDepositParameter], a
	callba RemoveMonFromPartyOrBox
.finish
	pop bc
	pop de
	pop hl
	dec hl
	push hl
	push de
	ld a, [CurPartyMon]
	dec a
	ld [CurPartyMon], a
	ret

HealParty: ; c658
	xor a
	ld [CurPartyMon], a
	ld hl, PartySpecies
.loop
	ld a, [hli]
	cp -1
	jr z, .done
	cp EGG
	jr z, .next

	push hl
	call HealPartyMon
	pop hl

.next
	ld a, [CurPartyMon]
	inc a
	ld [CurPartyMon], a
	jr .loop

.done
	ret

HealPartyMon: ; c677
	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld d, h
	ld e, l

	ld hl, MON_STATUS
	add hl, de
	xor a
	ld [hli], a
	ld [hl], a

	ld hl, MON_MAXHP
	add hl, de

	; bc = MON_HP
	ld b, h
	ld c, l
	dec bc
	dec bc

	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a

	callba RestoreAllPP
	ret

ComputeHPBarPixels: ; c699
; e = bc * (6 * 8) / de
	ld a, b
	or c
	jr z, .zero
	push hl
	xor a
	ld [hMultiplicand + 0], a
	ld a, b
	ld [hMultiplicand + 1], a
	ld a, c
	ld [hMultiplicand + 2], a
	ld a, 6 * 8
	ld [hMultiplier], a
	call Multiply
	; We need de to be under 256 because hDivisor is only 1 byte.
	ld a, d
	and a
	jr z, .divide
	; divide de and hProduct by 4
	srl d
	rr e
	srl d
	rr e
	ld a, [hProduct + 2]
	ld b, a
	ld a, [hProduct + 3]
	srl b
	rr a
	srl b
	rr a
	ld [hDividend + 3], a
	ld a, b
	ld [hDividend + 2], a
.divide
	ld a, e
	ld [hDivisor], a
	ld b, 4
	call Divide
	ld a, [hQuotient + 2]
	ld e, a
	pop hl
	and a
	ret nz
	ld e, 1
	ret

.zero
	ld e, 0
	ret

AnimateHPBar: ; c6e0
	call WaitBGMap
	call _AnimateHPBar
	call WaitBGMap
	ret

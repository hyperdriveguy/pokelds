SelectMenu:: ; 13327

	call CheckRegisteredItem
	jr c, .NotRegistered
	jp UseRegisteredItem

.NotRegistered:
	call OpenText
	ld b, BANK(ItemMayBeRegisteredText)
	ld hl, ItemMayBeRegisteredText
	call MapTextbox
	call WaitButton
	jp CloseText
; 13340


ItemMayBeRegisteredText: ; 13340
	text_jump UnknownText_0x1c1cf3
	db "@"
; 13345


CheckRegisteredItem: ; 13345

	ld a, [WhichRegisteredItem]
	and a
	jr z, .NORegisteredItem
	and REGISTERED_POCKET
	rlca
	rlca
	ld hl, .Pockets
	rst JumpTable
	ret

.Pockets:
	dw .CheckItem
	dw .CheckBall
	dw .CheckKeyItem
	dw .CheckTMHM

.CheckItem:
	ld hl, NumItems
	call .CheckRegisteredNO
	jr c, .NORegisteredItem
	inc hl
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	call .IsSameItem
	jr c, .NORegisteredItem
	and a
	ret

.CheckKeyItem:
	ld a, [RegisteredItem]
	ld hl, KeyItems
	ld de, 1
	call IsInArray
	jr nc, .NORegisteredItem
	ld a, [RegisteredItem]
	ld [CurItem], a
	and a
	ret

.CheckBall:
	ld hl, NumBalls
	call .CheckRegisteredNO
	jr nc, .NORegisteredItem
	inc hl
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	call .IsSameItem
	jr c, .NORegisteredItem
	ret

.CheckTMHM:
	jr .NORegisteredItem

.NORegisteredItem:
	xor a
	ld [WhichRegisteredItem], a
	ld [RegisteredItem], a
	scf
	ret
; 133a6


.CheckRegisteredNO: ; 133a6
	ld a, [WhichRegisteredItem]
	and REGISTERED_NUMBER
	dec a
	cp [hl]
	jr nc, .NotEnoughItems
	ld [wd107], a
	and a
	ret

.NotEnoughItems:
	scf
	ret
; 133b6


.IsSameItem: ; 133b6
	ld a, [RegisteredItem]
	cp [hl]
	jr nz, .NotSameItem
	ld [CurItem], a
	and a
	ret

.NotSameItem:
	scf
	ret
; 133c3


UseRegisteredItem: ; 133c3

	callba CheckItemMenu
	ld a, [wItemAttributeParamBuffer]
	ld hl, .SwitchTo
	rst JumpTable
	ret

.SwitchTo:
	dw .CantUse
	dw .NOFunction
	dw .NOFunction
	dw .NOFunction
	dw .Current
	dw .Party
	dw .Overworld
; 133df

.NOFunction: ; 133df
	call OpenText
	call CantUseItem
	call CloseText
	and a
	ret
; 133ea

.Current: ; 133ea
	call OpenText
	call DoItemEffect
	call CloseText
	and a
	ret
; 133f5

.Party: ; 133f5
	call RefreshScreen
	call FadeToMenu
	call DoItemEffect
	call CloseSubmenu
	call CloseText
	and a
	ret
; 13406

.Overworld: ; 13406
	call RefreshScreen
	ld a, 1
	ld [wUsingItemWithSelect], a
	call DoItemEffect
	xor a
	ld [wUsingItemWithSelect], a
	ld a, [wItemEffectSucceeded]
	cp 1
	jr nz, ._cantuse
	scf
	ld a, HMENURETURN_SCRIPT
	ld [hMenuReturn], a
	ret
; 13422

.CantUse: ; 13422
	call RefreshScreen

._cantuse
	call CantUseItem
	call CloseText
	and a
	ret
; 1342d

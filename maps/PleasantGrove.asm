const_value set 2
	const PLEASANTGROVE_YOUNGSTER1
	const PLEASANTGROVE_BLACK_BELT
	const PLEASANTGROVE_ROCKER
	const PLEASANTGROVE_KURT
	const PLEASANTGROVE_LASS
	const PLEASANTGROVE_YOUNGSTER2
	const PLEASANTGROVE_POKE_BALL1
	const PLEASANTGROVE_POKE_BALL2
	const PLEASANTGROVE_POKE_BALL3
	const PLEASANTGROVE_POKE_BALL4

PleasantGrove_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

PleasantGroveCharcoalMasterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .AlreadyGotCut
	writetext PleasantGroveText_CharcoalMasterIntro
	buttonsound
	verbosegiveitem HM_CUT
	setevent EVENT_GOT_HM01_CUT
	writetext PleasantGroveText_CharcoalMasterOutro
	waitbutton
	closetext
	end

.AlreadyGotCut:
	writetext PleasantGroveText_CharcoalMasterTalkAfter
	waitbutton
	closetext
	end

PleasantGroveHeadbuttGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM02_HEADBUTT
	iftrue .AlreadyGotHeadbutt
	writetext PleasantGroveText_HeadbuttIntro
	buttonsound
	verbosegiveitem TM_HEADBUTT
	iffalse .BagFull
	setevent EVENT_GOT_TM02_HEADBUTT
.AlreadyGotHeadbutt:
	writetext PleasantGroveText_HeadbuttOutro
	waitbutton
.BagFull:
	closetext
	end

PleasantGroveTrainerBug_catcherWayne:
	trainer EVENT_BEAT_BUG_CATCHER_WAYNE, BUG_CATCHER, WAYNE, PleasantGroveBug_catcherWayneSeenText, PleasantGroveBug_catcherWayneBeatenText, 0, PleasantGroveBug_catcherWayneScript

PleasantGroveBug_catcherWayneScript:
	end_if_just_battled
	opentext
	writetext PleasantGroveBug_catcherWayneAfterText
	waitbutton
	closetext
	end

PleasantGroveLassScript:
	jumptextfaceplayer Text_PleasantGroveLass

PleasantGrovePotion1:
	itemball POTION
	
PleasantGrovePotion2:
	itemball POTION

PleasantGroveAntidote:
	itemball ANTIDOTE

PleasantGrovePokeball:
	itemball POKE_BALL

PleasantGroveHiddenGreatBall:
	dwb EVENT_PLEASANT_GROVE_HIDDEN_GREAT_BALL, GREAT_BALL

PleasantGroveHiddenFullHeal:
	dwb EVENT_PLEASANT_GROVE_HIDDEN_FULL_HEAL, FULL_HEAL

PleasantGroveHiddenSuperPotion:
	dwb EVENT_PLEASANT_GROVE_HIDDEN_SUPER_POTION, SUPER_POTION

PleasantGroveHiddenEther:
	dwb EVENT_PLEASANT_GROVE_HIDDEN_ETHER, ETHER

PleasantGroveHiddenRepel:
	dwb EVENT_PLEASANT_GROVE_HIDDEN_REPEL, REPEL

MapPleasantGroveSignpostScript:
	jumptext PleasantGroveSignpostText

PleasantGroveMovementData_0x6ef4e:
	step UP
	step UP
	step UP
	step UP
	step_end

PleasantGroveMovementData_0x6ef53:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PleasantGroveMovementData_0x6ef58:
	fix_facing
	slow_step DOWN
	remove_fixed_facing
	step_end

PleasantGroveUnknownText_0x6ef5c:
	text "Oh, man… My boss"
	line "is going to be"
	cont "steaming…"

	para "The FARFETCH'D"
	line "that CUTS trees"

	para "for charcoal took"
	line "off on me."

	para "I can't go looking"
	line "for it here in the"
	cont "ILEX FOREST."

	para "It's too big, dark"
	line "and scary for me…"
	done

PleasantGroveUnknownText_0x6f019:
	text "Wow! Thanks a"
	line "whole bunch!"

	para "My boss's #mon"
	line "won't obey me be-"
	cont "cause I don't have"
	cont "a BADGE."
	done

PleasantGroveText_ItsTheMissingPokemon:
	text "It's the missing"
	line "#mon!"
	done

PleasantGroveText_Kwaaaa:
	text "FARFETCH'D: Kwaa!"
	done

PleasantGroveText_CharcoalMasterIntro:
	text "Ah! My FARFETCH'D!"

	para "You found it for"
	line "us, kid?"

	para "Without it, we"
	line "wouldn't be able"

	para "to CUT trees for"
	line "charcoal."

	para "Thanks, kid!"

	para "Now, how can I"
	line "thank you…"

	para "I know! Here, take"
	line "this."
	done

PleasantGroveText_CharcoalMasterOutro:
	text "That's the CUT HM."
	line "Teach that to a"

	para "#mon to clear"
	line "small trees."

	para "Of course, you"
	line "have to have the"

	para "GYM BADGE from"
	line "AZALEA to use it."
	done

PleasantGroveText_CharcoalMasterTalkAfter:
	text "Do you want to"
	line "apprentice as a"

	para "charcoal maker"
	line "with me?"

	para "You'll be first-"
	line "rate in ten years!"
	done

PleasantGroveText_HeadbuttIntro:
	text "What am I doing?"

	para "I'm shaking trees"
	line "using HEADBUTT."

	para "It's fun. Here,"
	line "you try it too!"
	done

PleasantGroveText_HeadbuttOutro:
	text "Rattle trees with"
	line "HEADBUTT. Some-"
	cont "times, sleeping"
	cont "#mon fall out."
	done

Text_PleasantGroveLass:
	text "Did something"
	line "happen to the"
	cont "forest's guardian?"
	done

PleasantGroveSignpostText:
	text "PLEASANT GROVE is"
	line "a forest that is"

	para "between ROUTE 101"
	line "and ROUTE 102."

	para "Make sure to have"
	line "healing items and"

	para "pick up items"
	line "along the way!"
	done

PleasantGroveText_KurtCaughtCelebi:
	text "Whew, wasn't that"
	line "something!"

	para "<PLAYER>, that was"
	line "fantastic. Thanks!"

	para "The legends about"
	line "that SHRINE were"
	cont "real after all."

	para "I feel inspired by"
	line "what I just saw."

	para "It motivates me to"
	line "make better BALLS!"

	para "I'm going!"
	done

PleasantGroveBug_catcherWayneSeenText:
	text "Don't sneak up on"
	line "me like that!"

	para "You frightened a"
	line "#mon away!"
	done

PleasantGroveBug_catcherWayneBeatenText:
	text "I hadn't seen that"
	line "#mon before…"
	done

PleasantGroveBug_catcherWayneAfterText:
	text "A #mon I've"
	line "never seen before"

	para "fell out of the"
	line "tree when I used"
	cont "HEADBUTT."

	para "I ought to use"
	line "HEADBUTT in other"
	cont "places too."
	done

PleasantGrove_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 49, 33, 1, ROUTE_101_PLEASANT_GATE
	warp_def 48, 33, 2, ROUTE_101_PLEASANT_GATE
	warp_def 5, 1, 1, BOUNTIFUL_TOWN

.CoordEvents: db 0

.BGEvents: db 7
	signpost 47, 31, SIGNPOST_READ, MapPleasantGroveSignpostScript
	signpost 9, 5, SIGNPOST_UP, MapPleasantGroveSignpostScript
	signpost 14, 37, SIGNPOST_ITEM, PleasantGroveHiddenGreatBall
	signpost 18, 38, SIGNPOST_ITEM, PleasantGroveHiddenFullHeal
	signpost 20, 13, SIGNPOST_ITEM, PleasantGroveHiddenSuperPotion
	signpost 32, 22, SIGNPOST_ITEM, PleasantGroveHiddenEther
	signpost 46, 28, SIGNPOST_ITEM, PleasantGroveHiddenRepel

.ObjectEvents: db 10
	person_event SPRITE_YOUNGSTER, 40, 16, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_BLACK_BELT, 32, 30, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PleasantGroveCharcoalMasterScript, -1
	person_event SPRITE_ROCKER, 19, 39, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, PleasantGroveHeadbuttGuyScript, -1
	person_event SPRITE_YOUNGSTER, 26, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_LASS, 6, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, PleasantGroveLassScript, -1
	person_event SPRITE_YOUNGSTER, 3, 18, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 0, PleasantGroveTrainerBug_catcherWayne, -1
	person_event SPRITE_POKE_BALL, 49, 0, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PleasantGrovePotion1, EVENT_PLEASANT_GROVE_POTION1
	person_event SPRITE_POKE_BALL, 33, 19, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PleasantGrovePotion2, EVENT_PLEASANT_GROVE_POTION2
	person_event SPRITE_POKE_BALL, 21, 25, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PleasantGroveAntidote, EVENT_PLEASANT_GROVE_ANTIDOTE
	person_event SPRITE_POKE_BALL, 26, 0, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, PleasantGrovePokeball, EVENT_PLEASANT_GROVE_POKEBALL


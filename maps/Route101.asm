const_value set 2
	const ROUTE101_COOLTRAINER_M1
	const ROUTE101_YOUNGSTER
	const ROUTE101_TEACHER1
	const ROUTE101_FRUIT_TREE
	const ROUTE101_FISHER
	const ROUTE101_COOLTRAINER_M2
	const ROUTE101_POKE_BALL

Route101_MapScriptHeader:
.MapTriggers:
	db 3

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2

.MapCallbacks:
	db 0

.Trigger0:
	end

.Trigger1:
	end

.Trigger2:
	end

Route101Tutorial1:
	spriteface ROUTE101_COOLTRAINER_M1, UP
	showemote EMOTE_SHOCK, ROUTE101_COOLTRAINER_M1, 15
	applymovement ROUTE101_COOLTRAINER_M1, DudeMovementData1a
	spriteface PLAYER, LEFT
	setevent EVENT_DUDE_TALKED_TO_YOU
	opentext
	writetext CatchingTutorialIntroText
	yesorno
	iffalse Script_RefusedTutorial1
	closetext
	follow ROUTE101_COOLTRAINER_M1, PLAYER
	applymovement ROUTE101_COOLTRAINER_M1, DudeMovementData1b
	stopfollow
	loadwildmon RATTATA, 5
	catchtutorial BATTLETYPE_TUTORIAL
	spriteface ROUTE101_COOLTRAINER_M1, UP
	opentext
	writetext CatchingTutorialDebriefText
	waitbutton
	closetext
	dotrigger $2
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

Route101Tutorial2:
	spriteface ROUTE101_COOLTRAINER_M1, UP
	showemote EMOTE_SHOCK, ROUTE101_COOLTRAINER_M1, 15
	applymovement ROUTE101_COOLTRAINER_M1, DudeMovementData2a
	spriteface PLAYER, LEFT
	setevent EVENT_DUDE_TALKED_TO_YOU
	opentext
	writetext CatchingTutorialIntroText
	yesorno
	iffalse Script_RefusedTutorial2
	closetext
	follow ROUTE101_COOLTRAINER_M1, PLAYER
	applymovement ROUTE101_COOLTRAINER_M1, DudeMovementData2b
	stopfollow
	loadwildmon RATTATA, 5
	catchtutorial BATTLETYPE_TUTORIAL
	spriteface ROUTE101_COOLTRAINER_M1, UP
	opentext
	writetext CatchingTutorialDebriefText
	waitbutton
	closetext
	dotrigger $2
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

Script_RefusedTutorial1:
	writetext CatchingTutorialDeclinedText
	waitbutton
	closetext
	applymovement ROUTE101_COOLTRAINER_M1, DudeMovementData1b
	dotrigger $2
	end

Script_RefusedTutorial2:
	writetext CatchingTutorialDeclinedText
	waitbutton
	closetext
	applymovement ROUTE101_COOLTRAINER_M1, DudeMovementData2b
	dotrigger $2
	end

CatchingTutorialDudeScript:
	faceplayer
	opentext
	checkcode VAR_BOXSPACE
	if_equal $0, .BoxFull
	checkevent EVENT_LEARNED_TO_CATCH_POKEMON
	iftrue .BoxFull
	checkevent EVENT_FINISHED_BISHOPS_ERRAND
	iffalse .BoxFull
	writetext CatchingTutorialRepeatText
	yesorno
	iffalse .Declined
	closetext
	loadwildmon RATTATA, 5
	catchtutorial BATTLETYPE_TUTORIAL
	opentext
	writetext CatchingTutorialDebriefText
	waitbutton
	closetext
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

.BoxFull:
	writetext TutorialDudeText
	waitbutton
	closetext
	end

.Declined:
	writetext CatchingTutorialDeclinedText
	waitbutton
	closetext
	end

Route101YoungsterScript:
	jumptextfaceplayer Route101YoungsterText

Route101TeacherScript:
	jumptextfaceplayer Route101TeacherText

Route101FisherScript:
	jumptextfaceplayer Route101FisherText

CooltrainerMScript_0x1a1031:
	faceplayer
	opentext
	checkday
	iftrue .day_morn
	checknite
	iftrue .nite
.day_morn
	writetext Text_WaitingForNight
	waitbutton
	closetext
	end

.nite
	writetext Text_WaitingForMorning
	waitbutton
	closetext
	end

MissedWardClerksHouseScript:
	opentext
	writetext MissedWardClerksHouseText
	waitbutton
	closetext
	applymovement PLAYER, AwayFromPleasantGateMovement
	end

Route101Sign1:
	jumptext Route101SignText

Route101Sign2:
	jumptext Route101SignText

Route101FruitTree:
	fruittree FRUITTREE_ROUTE_101

Route101Potion:
	itemball POTION

DudeMovementData1a:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step_end

DudeMovementData2a:
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step_end

DudeMovementData1b:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

DudeMovementData2b:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end

AwayFromPleasantGateMovement:
	step DOWN
	step_end

TutorialDudeText:
	text "#mon hide in"
	line "the grass. Who"

	para "knows when they'll"
	line "pop out…"
	done

CatchingTutorialIntroText:
	text "I've seen you a"
	line "couple times. How"

	para "many #mon have"
	line "you caught?"

	para "Would you like me"
	line "to show you how to"
	cont "catch #mon?"
	done

CatchingTutorialDebriefText:
	text "That's how you do"
	line "it."

	para "If you weaken them"
	line "first, #mon are"
	cont "easier to catch."
	done

CatchingTutorialDeclinedText:
	text "Oh. Fine, then."

	para "Anyway, if you"
	line "want to catch"

	para "#mon, you have"
	line "to walk a lot."
	done

CatchingTutorialRepeatText:
	text "Huh? You want me"
	line "to show you how to"
	cont "catch #mon?"
	done

Route101YoungsterText:
	text "Yo. How are your"
	line "#mon?"

	para "If they're weak"
	line "and not ready for"

	para "battle, keep out"
	line "of the grass."
	done

Route101TeacherText:
	text "See those ledges?"
	line "It's scary to jump"
	cont "off them."

	para "But you can go to"
	line "Bountiful without"

	para "walking through"
	line "the grass."
	done

Route101FisherText:
	text "I wanted to take a"
	line "break, so I saved"

	para "to record my"
	line "progress."
	done

; possibly unused
Text_WaitingForDay:
	text "I'm waiting for"
	line "#mon that"

	para "appear only in the"
	line "daytime."
	done

Text_WaitingForNight:
	text "I'm waiting for"
	line "#mon that"

	para "appear only at"
	line "night."
	done

Text_WaitingForMorning:
	text "I'm waiting for"
	line "#mon that"

	para "appear only in the"
	line "morning."
	done

MissedWardClerksHouseText:
	text "I think I missed"
	line "Brother Jones'"
	cont "house…"
	done

Route101SignText:
	text "Route 101"

	para "Bountiful Town -"
	line "Pleasant Grove"
	done

Route101_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 3, 19, 3, ROUTE_101_PLEASANT_GATE
	warp_def 19, 17, 1, CLERKS_HOUSE

.CoordEvents: db 3
	xy_trigger 1, 45, 18, 0, Route101Tutorial1, 0, 0
	xy_trigger 1, 45, 19, 0, Route101Tutorial2, 0, 0
	xy_trigger 0, 4, 19, 0, MissedWardClerksHouseScript, 0, 0

.BGEvents: db 2
	signpost 41, 17, SIGNPOST_READ, Route101Sign1
	signpost 6, 20, SIGNPOST_READ, Route101Sign2

.ObjectEvents: db 7
	person_event SPRITE_COOLTRAINER_M, 42, 20, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CatchingTutorialDudeScript, -1
	person_event SPRITE_YOUNGSTER, 23, 11, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route101YoungsterScript, -1
	person_event SPRITE_TEACHER, 38, 15, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Route101TeacherScript, -1
	person_event SPRITE_FRUIT_TREE, 53, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route101FruitTree, -1
	person_event SPRITE_FISHER, 13, 14, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Route101FisherScript, -1
	person_event SPRITE_COOLTRAINER_M, 7, 26, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CooltrainerMScript_0x1a1031, -1
	person_event SPRITE_POKE_BALL, 20, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, Route101Potion, EVENT_ROUTE_101_POTION

const_value set 2
	const BISHOPSLAB_BISHOP
	const BISHOPSLAB_BISHOPS_AIDE
	const BISHOPSLAB_POKE_BALL1
	const BISHOPSLAB_POKE_BALL2
	const BISHOPSLAB_POKE_BALL3
IF DEF(DEBUG)
	const BATTLE_TEST
ENDC

BishopsLab_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	priorityjump BishopErrandScript
	end

.Trigger1:
	end

; Event Scripts
BishopErrandScript:
	applymovement PLAYER, WalkUpToBishopMovement
	spriteface BISHOPSLAB_BISHOP, LEFT
	opentext
	writetext BishopErrandText
BishopRefusalLoop:
	yesorno
	iftrue BishopErrandContScript
	writetext BishopReallyNeedHelpText
	jump BishopRefusalLoop
BishopErrandContScript:
	writetext BishopPickPokemonText
	waitbutton
	dotrigger $1
	closetext
	spriteface BISHOPSLAB_BISHOP, DOWN
	end

BishopDirectionsScript:
	spriteface PLAYER, UP
	opentext
	writetext BishopHeresMyNumberText
	waitbutton
	closetext
	addcellnum PHONE_BISHOP
	opentext
	writetext GotBishopsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	spriteface BISHOPSLAB_BISHOP, LEFT
	opentext
	writetext BishopHealHereText
	waitbutton
	closetext
	spriteface BISHOPSLAB_BISHOP, DOWN
	opentext
	writetext BishopCountingOnYouText
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	dotrigger $5
	domaptrigger BOUNTIFUL_TOWN, $1
	end
	
LabTryToLeaveScript:
	spriteface BISHOPSLAB_BISHOP, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, PlayerComeBackMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue LookAtBishopPokeBallScript
	spriteface BISHOPSLAB_BISHOP, DOWN
	refreshscreen $0
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BISHOPSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_BISHOP
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CYNDAQUIL, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	checkcode VAR_FACING
	if_equal RIGHT, BishopDirectionsScript
	applymovement PLAYER, AfterCyndaquilMovement
	jump BishopDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue LookAtBishopPokeBallScript
	spriteface BISHOPSLAB_BISHOP, DOWN
	refreshscreen $0
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BISHOPSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_BISHOP
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem TOTODILE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TOTODILE, 5, BERRY
	closetext
	applymovement PLAYER, AfterTotodileMovement
	jump BishopDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue LookAtBishopPokeBallScript
	spriteface BISHOPSLAB_BISHOP, DOWN
	refreshscreen $0
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BISHOPSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_BISHOP
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHIKORITA, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHIKORITA, 5, BERRY
	closetext
	applymovement PLAYER, AfterChikoritaMovement
	jump BishopDirectionsScript

LookAtBishopPokeBallScript:
	opentext
	writetext BishopPokeBallText
	waitbutton
	closetext
	end

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

; Event Text
BishopErrandText:
	text "Bishop: Ah, there"
	line "you are <PLAYER>!"
	
	para "I have a favor to"
	line "ask of you."
	
	para "Our ward clerk,"
	line "Brother Jones"
	
	para "has a bunch of"
	line "papers to give to"
	cont "me."
	
	para "Will you help me"
	line "out?"
	done

BishopReallyNeedHelpText:
	text "But I really need"
	line "your help!"
	done

BishopPickPokemonText:
	text "Great! Because our"
	line "Ward Clerk lives"
	
	para "outside of town,"
	line "you're going to"
	cont "need a #mon."
	
	para "There are are"
	line "three on the table"
	cont "next to me."
	
	para "Go Ahead and"
	line "choose one <PLAYER>!"
	done

BishopHeresMyNumberText:
	text "Brother Jones"
	line "lives on Route"
	
	para "101, between a"
	line "bunch of trees."

	para "You should pass by"
	line "it before the"
	
	para "Pleasant Grove"
	line "gate."

	para "But just in case,"
	line "here's my phone"

	para "number. Call me if"
	line "anything comes up!"
	done

GotBishopsNumberText:
	text "<PLAYER> got"
	line "Bishop's phone"
	cont "number."
	done

BishopHealHereText:
	text "If your #MON is"
	line "hurt, you should"

	para "heal it with this"
	line "machine."

	para "Feel free to use"
	line "it anytime."
	done

BishopCountingOnYouText:
	text "<PLAYER>, I'm"
	line "counting on you!"
	done
	
LabWhereGoingText:
	text "Bishop: Wait!"
	line "Where are you"
	cont "going?"
	done

TakeCyndaquilText:
	text "Bishop: You'll"
	line "take Cyndaquil,"
	cont "the fire #mon?"
	done

TakeTotodileText:
	text "Bishop: Do you"
	line "want Totodile, the"
	cont "water #mon?"
	done

TakeChikoritaText:
	text "Bishop: So, you"
	line "like Chikorita,"
	cont "the grass #mon?"
	done

DidntChooseStarterText:
	text "Bishop: Think it"
	line "over carefully."
	done

ChoseStarterText:
	text "Bishop: that's a"
	line "great choice!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

BishopPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "Bishop."
	done

; Movement Data
AfterCyndaquilMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

WalkUpToBishopMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

PlayerComeBackMovement:
	step UP
	step_end
; Event End

; Non Event Scripts
BishopScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iffalse .ChooseOneScript
	checkevent EVENT_FINISHED_BISHOPS_ERRAND
	iffalse .GoFinishErrandScript
	checkevent EVENT_TALKED_TO_MOM_BEFORE_JOURNEY
	iffalse .GoTalkToMomScript
	writetext BishopHowsTheJourneyText
	waitbutton
	closetext
	end
.ChooseOneScript:
	writetext BishopChooseOneText
	waitbutton
	closetext
	end
.GoFinishErrandScript
	writetext BishopInstructionsAgainText
	waitbutton
	closetext
	end
.GoTalkToMomScript
	writetext BishopTalkToYourMomText
	waitbutton
	closetext
	end

BishopsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue .CanHeal
	writetext BishopsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext BishopsLabHealingMachineText2
	yesorno
	iftrue BishopsLabHealingMachine_HealParty
	closetext
	end

BishopsLabHealingMachine_HealParty:
	special TrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	writebyte 1 ; Machine is in Bishop's Lab
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

BishopsLabBookshelfScript:
	writetext BishopsLabBookshelfText
	waitbutton
	closetext
	end

; Non Event Text
BishopChooseOneText:
	text "Bishop: Go Ahead"
	line "and choose one"
	cont "<PLAYER>!"
	done

BishopInstructionsAgainText:
	text "Bishop: You don't"
	line "remember where"
	
	para "Brother Jones"
	line "lives? He lives on"
	
	para "Route 101, between"
	line "a bunch of trees."

	para "You should pass by"
	line "it before the"
	
	para "Pleasant Grove"
	line "gate."
	done
	
BishopTalkToYourMomText:
	text "Bishop: You should"
	line "talk to your Mom"
	
	para "before going out"
	line "of town."
	done

BishopHowsTheJourneyText:
	text "Bishop: <PLAYER>!"
	line "How's your jour-"
	cont "ney going?"
	done

BishopsLabHealingMachineText1:
	text "I wonder what this"
	line "does?"
	done

BishopsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #mon?"
	done

BishopsLabBookshelfText:
	text "There is a variety"
	line "of #mon re-"
	cont "search here!"
	done

IF DEF(DEBUG)
; Debugging stuff
BattleTestScript:
	faceplayer
	opentext
	playmusic MUSIC_CHAMPION_BATTLE_SINNOH
	writetext BishopHowsTheJourneyText
	waitbutton
	closetext
	winlosstext BishopHowsTheJourneyText, BishopHowsTheJourneyText
	loadtrainer YOUNGSTER, MIKEY
	startbattle
	reloadmapafterbattle
	closetext
	end
ENDC

BishopsLab_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 11, 4, 1, BOUNTIFUL_TOWN
	warp_def 11, 5, 1, BOUNTIFUL_TOWN

.CoordEvents: db 2
	xy_trigger 1, 6, 4, 0, LabTryToLeaveScript, 0, 0
	xy_trigger 1, 6, 5, 0, LabTryToLeaveScript, 0, 0

.BGEvents: db 9
	signpost 1, 2, SIGNPOST_READ, BishopsLabHealingMachine
	signpost 7, 3, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 7, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 7, 1, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 7, 0, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 7, 9, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 7, 8, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 7, 7, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 7, 6, SIGNPOST_READ, BishopsLabBookshelfScript

.ObjectEvents: db 6
	person_event SPRITE_BISHOP, 2, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, BishopScript, -1
	person_event SPRITE_SCIENTIST, 9, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_BISHOPS_AIDE_IN_LAB
	person_event SPRITE_POKE_BALL, 3, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_BISHOPS_LAB
	person_event SPRITE_POKE_BALL, 3, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_BISHOPS_LAB
	person_event SPRITE_POKE_BALL, 3, 8, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_BISHOPS_LAB
	person_event SPRITE_YOUNGSTER, 8, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, BattleTestScript, -1

IF DEF(DEBUG)
	const BATTLE_TEST
ENDC

BishopsLab_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	priorityjump BishopErrandScript
	end

.Trigger1:
	end

; Event Scripts
BishopErrandScript:
	applymovement PLAYER, WalkUpToBishopMovement
	spriteface BISHOPSLAB_BISHOP, LEFT
	opentext
	writetext BishopErrandText
BishopRefusalLoop:
	yesorno
	iftrue BishopErrandContScript
	writetext BishopReallyNeedHelpText
	jump BishopRefusalLoop
BishopErrandContScript:
	writetext BishopPickPokemonText
	waitbutton
	dotrigger $1
	closetext
	spriteface BISHOPSLAB_BISHOP, DOWN
	end

BishopDirectionsScript:
	spriteface PLAYER, UP
	opentext
	writetext BishopHeresMyNumberText
	waitbutton
	closetext
	addcellnum PHONE_BISHOP
	opentext
	writetext GotBishopsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	spriteface BISHOPSLAB_BISHOP, LEFT
	opentext
	writetext BishopHealHereText
	waitbutton
	closetext
	spriteface BISHOPSLAB_BISHOP, DOWN
	opentext
	writetext BishopCountingOnYouText
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	dotrigger $5
	domaptrigger BOUNTIFUL_TOWN, $1
	end
	
LabTryToLeaveScript:
	spriteface BISHOPSLAB_BISHOP, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, PlayerComeBackMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue LookAtBishopPokeBallScript
	spriteface BISHOPSLAB_BISHOP, DOWN
	refreshscreen $0
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BISHOPSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_BISHOP
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CYNDAQUIL, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	checkcode VAR_FACING
	if_equal RIGHT, BishopDirectionsScript
	applymovement PLAYER, AfterCyndaquilMovement
	jump BishopDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue LookAtBishopPokeBallScript
	spriteface BISHOPSLAB_BISHOP, DOWN
	refreshscreen $0
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BISHOPSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_BISHOP
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem TOTODILE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TOTODILE, 5, BERRY
	closetext
	applymovement PLAYER, AfterTotodileMovement
	jump BishopDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue LookAtBishopPokeBallScript
	spriteface BISHOPSLAB_BISHOP, DOWN
	refreshscreen $0
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BISHOPSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_BISHOP
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHIKORITA, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHIKORITA, 5, BERRY
	closetext
	applymovement PLAYER, AfterChikoritaMovement
	jump BishopDirectionsScript

LookAtBishopPokeBallScript:
	opentext
	writetext BishopPokeBallText
	waitbutton
	closetext
	end

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

; Event Text
BishopErrandText:
	text "Bishop: Ah, there"
	line "you are <PLAYER>!"
	
	para "I have a favor to"
	line "ask of you."
	
	para "Our ward clerk,"
	line "Brother Jones"
	
	para "has a bunch of"
	line "papers to give to"
	cont "me."
	
	para "Will you help me"
	line "out?"
	done

BishopReallyNeedHelpText:
	text "But I really need"
	line "your help!"
	done

BishopPickPokemonText:
	text "Great! Because our"
	line "Ward Clerk lives"
	
	para "outside of town,"
	line "you're going to"
	cont "need a #mon."
	
	para "There are are"
	line "three on the table"
	cont "next to me."
	
	para "Go Ahead and"
	line "choose one <PLAYER>!"
	done

BishopHeresMyNumberText:
	text "Brother Jones"
	line "lives on Route"
	
	para "101, between a"
	line "bunch of trees."

	para "You should pass by"
	line "it before the"
	
	para "Pleasant Grove"
	line "gate."

	para "But just in case,"
	line "here's my phone"

	para "number. Call me if"
	line "anything comes up!"
	done

GotBishopsNumberText:
	text "<PLAYER> got"
	line "Bishop's phone"
	cont "number."
	done

BishopHealHereText:
	text "If your #MON is"
	line "hurt, you should"

	para "heal it with this"
	line "machine."

	para "Feel free to use"
	line "it anytime."
	done

BishopCountingOnYouText:
	text "<PLAYER>, I'm"
	line "counting on you!"
	done
	
LabWhereGoingText:
	text "Bishop: Wait!"
	line "Where are you"
	cont "going?"
	done

TakeCyndaquilText:
	text "Bishop: You'll"
	line "take Cyndaquil,"
	cont "the fire #mon?"
	done

TakeTotodileText:
	text "Bishop: Do you"
	line "want Totodile, the"
	cont "water #mon?"
	done

TakeChikoritaText:
	text "Bishop: So, you"
	line "like Chikorita,"
	cont "the grass #mon?"
	done

DidntChooseStarterText:
	text "Bishop: Think it"
	line "over carefully."
	done

ChoseStarterText:
	text "Bishop: that's a"
	line "great choice!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

BishopPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "Bishop."
	done

; Movement Data
AfterCyndaquilMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

WalkUpToBishopMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

PlayerComeBackMovement:
	step UP
	step_end
; Event End

; Non Event Scripts
BishopScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iffalse .ChooseOneScript
	checkevent EVENT_FINISHED_BISHOPS_ERRAND
	iffalse .GoFinishErrandScript
	checkevent EVENT_TALKED_TO_MOM_BEFORE_JOURNEY
	iffalse .GoTalkToMomScript
	writetext BishopHowsTheJourneyText
	waitbutton
	closetext
	end
.ChooseOneScript:
	writetext BishopChooseOneText
	waitbutton
	closetext
	end
.GoFinishErrandScript
	writetext BishopInstructionsAgainText
	waitbutton
	closetext
	end
.GoTalkToMomScript
	writetext BishopTalkToYourMomText
	waitbutton
	closetext
	end

BishopsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue .CanHeal
	writetext BishopsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext BishopsLabHealingMachineText2
	yesorno
	iftrue BishopsLabHealingMachine_HealParty
	closetext
	end

BishopsLabHealingMachine_HealParty:
	special TrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	writebyte 1 ; Machine is in Bishop's Lab
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

BishopsLabBookshelfScript:
	writetext BishopsLabBookshelfText
	waitbutton
	closetext
	end

; Non Event Text
BishopChooseOneText:
	text "Bishop: Go Ahead"
	line "and choose one"
	cont "<PLAYER>!"
	done

BishopInstructionsAgainText:
	text "Bishop: You don't"
	line "remember where"
	
	para "Brother Jones"
	line "lives? He lives on"
	
	para "Route 101, between"
	line "a bunch of trees."

	para "You should pass by"
	line "it before the"
	
	para "Pleasant Grove"
	line "gate."
	done
	
BishopTalkToYourMomText:
	text "Bishop: You should"
	line "talk to your Mom"
	
	para "before going out"
	line "of town."
	done

BishopHowsTheJourneyText:
	text "Bishop: <PLAYER>!"
	line "How's your jour-"
	cont "ney going?"
	done

BishopsLabHealingMachineText1:
	text "I wonder what this"
	line "does?"
	done

BishopsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #mon?"
	done

BishopsLabBookshelfText:
	text "There is a variety"
	line "of #mon re-"
	cont "search here!"
	done

IF DEF(DEBUG)
; Debugging stuff
BattleTestScript:
	faceplayer
	opentext
	playmusic MUSIC_CHAMPION_BATTLE_SINNOH
	writetext BishopHowsTheJourneyText
	waitbutton
	closetext
	winlosstext BishopHowsTheJourneyText, BishopHowsTheJourneyText
	loadtrainer YOUNGSTER, MIKEY
	startbattle
	reloadmapafterbattle
	closetext
	end
ENDC

BishopsLab_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 11, 4, 1, BOUNTIFUL_TOWN
	warp_def 11, 5, 1, BOUNTIFUL_TOWN

.CoordEvents: db 2
	xy_trigger 1, 6, 4, 0, LabTryToLeaveScript, 0, 0
	xy_trigger 1, 6, 5, 0, LabTryToLeaveScript, 0, 0

.BGEvents: db 1
	signpost 1, 2, SIGNPOST_READ, BishopsLabHealingMachine
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript
	signpost 1, 2, SIGNPOST_READ, BishopsLabBookshelfScript

.ObjectEvents: db 7
	person_event SPRITE_BISHOP, 2, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, BishopScript, -1
	person_event SPRITE_SCIENTIST, 9, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_BISHOPS_AIDE_IN_LAB
	person_event SPRITE_POKE_BALL, 3, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_BISHOPS_LAB
	person_event SPRITE_POKE_BALL, 3, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_BISHOPS_LAB
	person_event SPRITE_POKE_BALL, 3, 8, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_BISHOPS_LAB
IF DEF(DEBUG)
	person_event SPRITE_YOUNGSTER, 8, 0, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, BattleTestScript, -1
ENDC

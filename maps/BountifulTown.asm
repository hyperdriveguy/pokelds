const_value set 2
	const BOUNTIFULTOWN_TEACHER
	const BOUNTIFULTOWN_FISHER

BountifulTown_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .FlyPoint

.Trigger0:
	end

.Trigger1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_BOUNTIFUL
	return

BountifulTown_TeacherStopsYouTrigger1:
	playmusic MUSIC_MOM
	spriteface BOUNTIFULTOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface PLAYER, DOWN
	applymovement BOUNTIFULTOWN_TEACHER, Movement_TeacherRunsToYou1_NBT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow BOUNTIFULTOWN_TEACHER, PLAYER
	applymovement BOUNTIFULTOWN_TEACHER, Movement_TeacherBringsYouBack1_NBT
	stopfollow
	spriteface BOUNTIFULTOWN_TEACHER, UP
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

BountifulTown_TeacherStopsYouTrigger2:
	playmusic MUSIC_MOM
	spriteface BOUNTIFULTOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface PLAYER, DOWN
	applymovement BOUNTIFULTOWN_TEACHER, Movement_TeacherRunsToYou2_NBT
	spriteface PLAYER, LEFT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow BOUNTIFULTOWN_TEACHER, PLAYER
	applymovement BOUNTIFULTOWN_TEACHER, Movement_TeacherBringsYouBack2_NBT
	stopfollow
	spriteface BOUNTIFULTOWN_TEACHER, UP
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

BountifulTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_BEFORE_JOURNEY
	iftrue .CallMom
	checkevent EVENT_FINISHED_BISHOPS_ERRAND
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_BISHOP
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

BountifulTownFisherScript:
	jumptextfaceplayer Text_BishopDiscoveredNewMon

BountifulTownSign:
	jumptext BountifulTownSignText

MapBountifulTownPlayersHouseSignScript:
	jumptext PlayersHouseSignText

MapBountifulTownBishopsLabSignScript:
	jumptext BishopsLabSignText

MapBountifulTownBishopsHouseSignScript:
	jumptext BishopsHouseSignText

Movement_TeacherRunsToYou1_NBT:
	step UP
	step UP
	step UP
	step_end

Movement_TeacherRunsToYou2_NBT:
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

Movement_TeacherBringsYouBack1_NBT:
	step DOWN
	step DOWN
	step DOWN
	step_end

Movement_TeacherBringsYouBack2_NBT:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

Movement_SilverPushesYouAway_NBT:
	turn_head UP
	step DOWN
	step_end

Movement_SilverShovesYouOut_NBT:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

Movement_SilverReturnsToTheShadows_NBT:
	step RIGHT
	step_end

Text_GearIsImpressive:
	text "Wow, your #Gear"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#mon!"

	para "Wild #mon"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #mon"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #Gear to"

	para "let her know how"
	line "you're doing."
	done

Text_BishopDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear Bishop"
	line "discovered some"
	cont "new #mon."
	done

BountifulTownSignText:
	text "Bountiful Town"

	para "The Humble Town of"
	line "Plenty"
	done

PlayersHouseSignText:
	text "<PLAYER>'s House"
	done

BishopsLabSignText:
	text "Johnson"
	line "#mon Lab"
	done

BishopsHouseSignText:
	text "The Johnson Home"
	done

BountifulTown_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 23, 14, 1, BISHOPS_LAB
	warp_def 11, 11, 1, KRISS_HOUSE_1F
	warp_def 9, 21, 1, KRISS_NEIGHBORS_HOUSE
	warp_def 17, 23, 1, BISHOPS_HOUSE

.CoordEvents: db 2
	xy_trigger 0, 1, 26, 0, BountifulTown_TeacherStopsYouTrigger1, 0, 0
	xy_trigger 0, 1, 27, 0, BountifulTown_TeacherStopsYouTrigger2, 0, 0

.BGEvents: db 4
	signpost 15, 17, SIGNPOST_READ, BountifulTownSign
	signpost 11, 9, SIGNPOST_READ, MapBountifulTownPlayersHouseSignScript
	signpost 23, 11, SIGNPOST_READ, MapBountifulTownBishopsLabSignScript
	signpost 17, 21, SIGNPOST_READ, MapBountifulTownBishopsHouseSignScript

.ObjectEvents: db 3
	person_event SPRITE_TEACHER, 5, 26, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BountifulTownTeacherScript, -1
	person_event SPRITE_FISHER, 14, 15, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, BountifulTownFisherScript, -1

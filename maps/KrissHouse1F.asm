const_value set 2
	const KRISSHOUSE1F_MOM
	const KRISSHOUSE1F_NEIGHBOR

KrissHouse1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

; Start Mom's introduction
MomIntroScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, KRISSHOUSE1F_MOM, 15
	applymovement PLAYER, GoToMomMovement
	spriteface KRISSHOUSE1F_MOM, RIGHT
	opentext
	writetext MomIntroText1
	buttonsound
	stringtotext GearName, $1
	scall RecievePokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	dotrigger $1
	setevent EVENT_MOM_INTRO
	writetext MomIntroText2
	buttonsound
	special Special_SetDayOfWeek
SetDstScript:
	writetext IsItDst
	yesorno
	iffalse NoDstScript
	special Special_InitialSetDSTFlag
	yesorno
	iffalse SetDstScript
	jump ContMomIntroScript
NoDstScript:
	special Special_InitialClearDSTFlag
	yesorno
	iffalse SetDstScript
ContMomIntroScript:
	writetext MomIntroText3
	yesorno
	iffalse PhoneIntstructionsScript
	writetext NoInstructionsText
	jump EndMomIntro
PhoneIntstructionsScript:
	writetext PhoneInstructionsText
EndMomIntro:
	waitbutton
	closetext
	special RestartMapMusic
	spriteface KRISSHOUSE1F_MOM, LEFT
	end

MomIntroText1:
	text "Oh, <PLAYER>!"

	para "Bishop Johnson was"
	line "looking for you."

	para "He said he wanted"
	line "you to do some-"
	cont "thing for him."

	para "Oh! I almost for-"
	line "got! Your #mon"

	para "Gear is back from"
	line "the repair shop."

	para "Here you go!"
	done

MomIntroText2:
	text "#mon Gear, or"
	line "just #Gear."

	para "It's a neccessity"
	line "for keeping in"
	cont "touch."

	para "Oh, the day of the"
	line "week isn't set."

	para "You mustn't forget"
	line "that!"
	done

; Set DST
IsItDst:
	text "Is it Daylight"
	line "Saving Time now?"
	done

MomIntroText3:
	text "Come home to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time."

	para "By the way, do you"
	line "know how to use"
	cont "the Phone?"
	done

PhoneInstructionsText:
	text "I'll read the"
	line "instructions."

	para "Turn the #Gear"
	line "on and select the"
	cont "Phone icon."

	para "Phone numbers are"
	line "stored in memory."

	para "Just choose a name"
	line "you want to call."

	para "Gee, isn't that"
	line "convenient?"
	done

NoInstructionsText:
	text "Okay. Good luck"
	line "<PLAYER>!"
	done

GearName:
	db "#Gear@"

RecievePokegear:
	jumpstd receiveitem
	end

GoToMomMovement:
rept 3
	step DOWN
endr
	step LEFT
	step_end

; People Scripts and Text
MomScript:
	faceplayer
	opentext
	checkevent EVENT_FINISHED_BISHOPS_ERRAND
	iffalse MomGoCompleteErrandScript
	checkevent EVENT_TALKED_TO_MOM_BEFORE_JOURNEY
	iffalse MomJourneyScript
	writetext DoGreatThingsText
	waitbutton
	closetext
	end
MomGoCompleteErrandScript:
	writetext MomGoCompleteErrandText
	waitbutton
	closetext
	end
MomJourneyScript:
	writetext MomJourneyText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_MOM_BEFORE_JOURNEY
	end

MomGoCompleteErrandText:
	text "Bishop is waiting"
	line "for you."
	
	para "You should probab-"
	line "ly hurry, it may"
	cont "be important."
	done

MomJourneyText:
	text "So how was that"
	line "errand?"
	
	para "…"
	
	para "So you want to go"
	line "on an adventure…"
	
	para "…"
	
	para "Okay. You can go,"
	line "but be careful."
	
	para "And come visit so"
	line "that I know you're"
	cont "okay."
	done

DoGreatThingsText:
	text "Are you having fun"
	line "on your journey?"
	
	para "…"
	
	para "Good. Now go on."
	line "I know you'll do"
	cont "great things!"
	done

KrissHouse1F_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 7, 6, 2, BOUNTIFUL_TOWN
	warp_def 7, 7, 2, BOUNTIFUL_TOWN
	warp_def 0, 11, 1, KRISS_HOUSE_2F

.CoordEvents: db 1
	xy_trigger 0, 1, 11, 0, MomIntroScript, 0, 0

.BGEvents: db 4
	signpost 1, 2, SIGNPOST_READ, ObjectEvent
	signpost 1, 3, SIGNPOST_READ, ObjectEvent
	signpost 1, 4, SIGNPOST_READ, ObjectEvent
	signpost 1, 6, SIGNPOST_READ, ObjectEvent

.ObjectEvents: db 2
	person_event SPRITE_MOM, 4, 9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MomScript, -1
	person_event SPRITE_POKEFAN_F, 4, 6, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1


const_value set 2
	const CLERKSHOUSE_WARDCLERK

ClerksHouse_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	priorityjump .GetClerkPapers
	end

.Trigger1:
	end

.GetClerkPapers
	showemote EMOTE_SHOCK, CLERKSHOUSE_WARDCLERK, 15
	spriteface CLERKSHOUSE_WARDCLERK, DOWN
	opentext
	writetext ClerksHouse_WardClerkIntroText
	waitbutton
	closetext
	applymovement PLAYER, ClerksHouse_WalkToClerkMovement
	opentext
	spriteface CLERKSHOUSE_WARDCLERK, UP
	writetext ClerksHouse_WardClerkLetMeGetPapersText
	waitbutton
	closetext
	pause 10
	spriteface CLERKSHOUSE_WARDCLERK, DOWN
	opentext
	writetext ClerksHouse_WardClerkGivePapersText
	buttonsound
	waitsfx
	giveitem CLERKSPAPERS
	writetext ClerksHouse_RecievedPapersText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_PAPERS_FROM_WARD_CLERK
	buttonsound
	writetext ClerksHouse_WardClerkLetMeHeal
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special TrainerRankings_Healings
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	dotrigger $1
	opentext
	writetext ClerksHouse_WardClerkGiveBishopMyRegardsText
	waitbutton
	closetext
	end

ClerksHouse_WardClerkScript:
	faceplayer
	opentext
	checkevent EVENT_FINISHED_BISHOPS_ERRAND
	iftrue .SomeoneOnceSaid
	writetext ClerksHouse_WardClerkGiveBishopMyRegardsText
	waitbutton
	closetext
	end
.SomeoneOnceSaid:
	writetext WardClerk_SomeoneOnceSaidText
	waitbutton
	closetext
	end

ClerksHouse_WardClerkIntroText:
	text "Ah, <PLAYER>!"
	line "There you are!"
	done
	
ClerksHouse_WardClerkLetMeGetPapersText:
	text "Let me get those"
	line "papers for Bishop…"
	
	para "…"
	done
	
ClerksHouse_WardClerkGivePapersText:
	text "Alrighty! Here's"
	line "the papers!"
	done
	
ClerksHouse_RecievedPapersText:
	text "<PLAYER> received"
	line "ClerksPapers."
	done
	
ClerksHouse_WardClerkLetMeHeal:
	text "Let me heal your"
	line "#mon before"

	para "you head back to"
	line "Bountiful Town."	
	done
	
ClerksHouse_WardClerkGiveBishopMyRegardsText:
	text "Give Bishop my"
	line "regards <PLAYER>!"
	done

WardClerk_SomeoneOnceSaidText:
	text "Someone once told"
	line "me:"
	
	para "Know what you"
	line "know, and know how"
	cont "you know it."
	
	para "It's very wise"
	line "advice to follow."
	done

ClerksHouse_WalkToClerkMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

ClerksHouse_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 2, ROUTE_101
	warp_def 7, 3, 2, ROUTE_101

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_GENTLEMAN, 5, 6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ClerksHouse_WardClerkScript, -1


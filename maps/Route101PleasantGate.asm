const_value set 2
	const ROUTE101PLEASANTGATE_OFFICER
	const ROUTE101PLEASANTGATE_YOUNGSTER

Route101PleasantGate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

OfficerScript_0x7b5bb:
	jumptextfaceplayer UnknownText_0x7b5c1

YoungsterScript_0x7b5be:
	jumptextfaceplayer UnknownText_0x7b60d

UnknownText_0x7b5c1:
	text "You can't climb"
	line "ledges."

	para "But you can jump"
	line "down from them to"
	cont "take a shortcut."
	done

UnknownText_0x7b60d:
	text "Different kinds of"
	line "#MON appear"
	cont "past here."

	para "If you want to"
	line "catch them all,"

	para "you have to look"
	line "everywhere."
	done

Route101PleasantGate_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 5, 0, 1, PLEASANT_GROVE
	warp_def 4, 0, 2, PLEASANT_GROVE
	warp_def 7, 4, 1, ROUTE_101
	warp_def 7, 5, 1, ROUTE_101

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_OFFICER, 2, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, OfficerScript_0x7b5bb, -1
	person_event SPRITE_YOUNGSTER, 2, 1, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x7b5be, -1


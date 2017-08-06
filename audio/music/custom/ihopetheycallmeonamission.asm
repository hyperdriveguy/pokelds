Music_IHopeTheyCallMeOnAMission:
	musicheader 3, 1, Music_IHopeTheyCallMeOnAMission_Ch1
	musicheader 1, 2, Music_IHopeTheyCallMeOnAMission_Ch2
	musicheader 1, 3, Music_IHopeTheyCallMeOnAMission_Ch3

Music_IHopeTheyCallMeOnAMission_Ch1:
	tempo 130
	volume $77
	dutycycle $2
	tone $0001
	stereopanning $7f
	notetype $c, $b5
	callchannel Music_IHopeTheyCallMeOnAMission_Ch1_part
	callchannel Music_IHopeTheyCallMeOnAMission_Ch1_part
Music_IHopeTheyCallMeOnAMission_Ch1_main:
rept 7
	callchannel Music_IHopeTheyCallMeOnAMission_Ch1_part
endr
	octave 2
	note F_, 3
	octave 3
	note C_, 1
	note A_, 3
	note C_, 1
	octave 2
	note A_, 3
	octave 3
	note E_, 1
	note A_, 3
	note E_, 1
	note C_, 3
	note F_, 1
	note A_, 3
	note F_, 1
	note C_, 4
	note A_, 4
	callchannel Music_IHopeTheyCallMeOnAMission_Ch1_part

	loopchannel 0, Music_IHopeTheyCallMeOnAMission_Ch1_main

Music_IHopeTheyCallMeOnAMission_Ch1_part:
	octave 2
	note F_, 3
	octave 3
	note C_, 1
	note A_, 3
	note C_, 1
	note D_, 4
	note A_, 4
	endchannel
	
Music_IHopeTheyCallMeOnAMission_Ch2:
	volume $77
	dutycycle $1
	tone $0001
	stereopanning $f7
	notetype $c, $b5
	;intensity $89
	; A little rest
Music_IHopeTheyCallMeOnAMission_Ch2_main:
rept 5
	callchannel Music_IHopeTheyCallMeOnAMission_Ch2_filler
endr
	octave 4
	note C_, 4
	note A_, 7
	note A_, 1
	note G_, 3
	note F_, 1
	note D_, 3
	note C_, 1
	note D_, 3
	note F_, 5
	note __, 4
	; Bug workaround above
	note C_, 4
	note F_, 7
	note F_, 1
	note A_, 3
	note G_, 1
	note F_, 3
	note D_, 1
	note F_, 8
	note __, 4
	callchannel Music_IHopeTheyCallMeOnAMission_Ch2_part
	note C_, 4
	octave 5
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	octave 4
	note A_, 4
	note G_, 3
	note F_, 1
	note D_, 3
	note F_, 1
	note F_, 12

	loopchannel 0, Music_IHopeTheyCallMeOnAMission_Ch2_main
	
Music_IHopeTheyCallMeOnAMission_Ch2_part:
	octave 4
	note C_, 4
	note A_, 7
	note A_, 1
	note G_, 3
	note F_, 1
	note D_, 3
	note C_, 1
	note D_, 3
	note F_, 5
	note __, 4
	endchannel

Music_IHopeTheyCallMeOnAMission_Ch2_filler:
	volume $6a
	octave 2
	note F_, 3
	octave 3
	note C_, 1
	note A_, 3
	note C_, 1
	note D_, 4
	note A_, 4
	endchannel

Music_IHopeTheyCallMeOnAMission_Ch3:
	loopchannel 0, Music_IHopeTheyCallMeOnAMission_Ch1_main

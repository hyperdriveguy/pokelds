Music_BookOfMormonStoriesTitle:
	musicheader 1, 1, Music_BookOfMormonStoriesTitle_Ch1
	;musicheader 1, 2, Music_BookOfMormonStories_Ch2
	;musicheader 1, 3, Music_BookOfMormonStories_Ch3
	
Music_BookOfMormonStoriesTitle_Ch1:
	tempo 400
	volume $70
	dutycycle $1
	tone $0002
	stereopanning $7f
	vibrato $12, $24
	notetype $c, $b7
	intensity $8a
Music_BookOfMormonStoriesTitle_Ch1_Main:
	octave 5
	note B_, 1
	note G_, 2
	note F#, 2
	note G_, 1

	note B_, 1
	note G_, 2
	note F#, 2
	note G_, 1

	note B_, 1
	note G_, 2
	note F#, 2
	note G_, 1

	note E_, 1
	note E_, 2
	note E_, 2
	note F#, 1

	note E_, 1
	note D_, 2
	octave 4
	note D_, 2
	octave 5
	note D_, 1

	note E_, 6

	note A_, 1
	note E_, 2
	note A_, 3

	note G_, 1
	note E_, 2
	note G_, 3

	note A_, 3
	note A_, 4
	
	loopchannel 0, Music_BookOfMormonStoriesTitle_Ch1_Main

;Music_BookOfMormonStoriesTitle_Ch2:
	;volume $77
	;tone $0002
	;stereopanning $f7
	;notetype $C, $66
	; Measure 1
	;octave 2
	;note B_, 4
	
	; Measure 2
	;note B_, 4
	
	; Measure 3
	;note B_, 4
	
	; Measure 4
	;note B_, 1
	;note B_, 1
	;note B_, 2
	
	; Measure 5
	;note B_, 4
	
	; Measure 6
	;note B_, 4
	
	; Measure 7
	;note B_, 4
	
	; Measure 8
	;note B_, 1
	;note B_, 1
	;note B_, 2
	
	; Measure 9
	;octave 3
	;note D_, 4
	
	; Measure 10
	;note D_, 4
	
	; Measure 11
	;note D_, 4
	
	; Measure 12
	;note D_, 1
	;note D_, 1
	;note D_, 2
	
	; Measure 13
	;note E_, 4
	
	; Measure 14
	;octave 2
	;note B_, 4
	
	; Measure 15
	;octave 3
	;note E_, 2
	;note D#, 2
	
	; Measure 16
	;octave 2
	;note B_, 4
	
	;loopchannel 0, Music_BookOfMormonStories_Ch2

;Music_BookOfMormonStoriesTitle_Ch3:
	;stereopanning $ff
	;vibrato $12, $24
	;notetype $c, $b7
	;tone $0002
	;loopchannel 0, Music_BookOfMormonStories_Ch1_Main

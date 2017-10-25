Music_RedeemerOfIsrael:
	musicheader 2, 1, Music_RedeemerOfIsrael_Ch1
	musicheader 1, 2, Music_RedeemerOfIsrael_Ch2

Music_RedeemerOfIsrael_Ch1:
	tempo 190
	volume $70
	dutycycle $1
	tone $0004
	stereopanning $7f
	vibrato $12, $24
	notetype $c, $b7
	intensity $8a
	note __, 2
Music_RedeemerOfIsrael_Ch1_Main:
	octave 4
	note D_, 2
	note D_, 2
	note E_, 2
	note F#, 2

	note G_, 2
	note A_, 4
	note B_, 1
	note A_, 1

	note G_, 2
	note F#, 4
	note E_, 2

	note E_, 2
	note D_, 6

	note A_, 2
	octave 5
	note D_, 4
	note D_, 2

	note D_, 2
	note C#, 2
	octave 4
	note A_, 2
	note B_, 2

	note B_, 2
	note A_, 6

	note A_, 2
	octave 5
	note D_, 4
	note D_, 1
	note C#, 1

	octave 4
	note B_, 2
	note A_, 4
	note F#, 2

	note A_, 2
	note B_, 4
	note B_, 1
	note A_, 1

	note G_, 1
	note F#, 1
	note E_, 4
	note D_, 2

	note F#, 2
	note A_, 3
	note B_, 1
	note A_, 2

	note D_, 2
	note F#, 4
	note E_, 2

	note E_, 2
	note D_, 8

	loopchannel 0, Music_RedeemerOfIsrael_Ch1_Main

Music_RedeemerOfIsrael_Ch2:
	dutycycle $3
	tone $0004
	stereopanning $f7
	volume $65
	vibrato $14, $12
	notetype $c, $b7
	intensity $a4
	note __, 2
Music_RedeemerOfIsrael_Ch2_Main:
	octave 3
	note F#, 2
	note F#, 2
	note A_, 2
	note A_, 2

	octave 4
	note D_, 2
	note D_, 4
	note D_, 2

	octave 3
	note B_, 2
	note A_, 4
	note G_, 2

	note G_, 2
	note F#, 6

	octave 4
	note D_, 2
	octave 3
	note A_, 4
	note A_, 2

	note A_, 2
	note A_, 4
	note G#, 2

	note G#, 2
	note A_, 6

	note A_, 2
	note A_, 4
	note A_, 2

	octave 4
	note D_, 2
	note D_, 4
	octave 3
	note A_, 2

	octave 4
	note D_, 2
	note D_, 4
	note D_, 2

	octave 3
	note B_, 2
	note A_, 4
	note F#, 2

	note A_, 2
	note F#, 3
	note G_, 1
	note F#, 2

	note F#, 2
	note A_, 4
	note G_, 2

	note G_, 2
	note F#, 8

	loopchannel 0, Music_RedeemerOfIsrael_Ch2_Main

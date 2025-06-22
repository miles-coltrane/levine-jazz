\version "2.24.4"
\include "include/prologue.ly"

theChordC = \chordmode { c\breve:maj7 }
theModeC = \markup { "C Ionian" }
theNotesC = { c'4 d' e' f' g' a' b' c'' }
theLyricsC = \lyricmode { "" "" "" "" "" "" "" "" }

theChordD = \chordmode { d\breve:min7 }
theModeD = \markup { "D Dorian" }
theNotesD = { d'4 e' f' g' a' b' c'' d'' }
theLyricsD = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordE = \chordmode { e\breve:min7 }
theModeE = \markup { "E Phrygian" }
theNotesE = { e'4 f' g' a' b' c'' d'' e'' }
theLyricsE = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordF = \chordmode { f\breve:maj7.11+ }
theModeF = \markup { "F Lydian" }
theNotesF = { f'4 g' a' b' c'' d'' e'' f'' }
theLyricsF = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordG = \chordmode { g\breve:7 }
theModeG = \markup { "G Mixolydian" }
theNotesG = { g'4 a' b' c'' d'' e'' f'' g'' }
theLyricsG = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordA = \chordmode { a\breve:min7 }
theModeA = \markup { "A Aeolian" }
theNotesA = { a'4 b' c'' d'' e'' f'' g'' a'' }
theLyricsA = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordB = \chordmode { b\breve:min7.5- }
theModeB = \markup { "B Locrian" }
theNotesB = { b'4 c'' d'' e'' f'' g'' a'' b'' }
theLyricsB = \lyricmode { ""4 "" "" "" "" "" "" "" }

\include "include/modes.ly"
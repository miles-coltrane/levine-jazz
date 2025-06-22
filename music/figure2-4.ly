\version "2.24.4"
\include "include/prologue.ly"

theChordC = \chordmode { c\breve:maj7 }
theModeC = \markup { \hspace #96 "C Ionian" }
theNotesC = { c'4 d e f g a b c }
theLyricsC = \lyricmode { "" "" "" "" "" "" "" "" }

theChordD = \chordmode { d\breve:min7 }
theModeD = \markup { \hspace #95 "D Dorian" }
theNotesD = { d,4 e f g a b c d  }
theLyricsD = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordE = \chordmode { e\breve:min7 }
theModeE = \markup { \hspace #94 "E Phrygian" }
theNotesE = { e,4 f g a b c d e }
theLyricsE = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordF = \chordmode { f\breve:maj7.11+ }
theModeF = \markup { \hspace #96 "F Lydian" }
theNotesF = { f,4 g a b c d e f  }
theLyricsF = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordG = \chordmode { g\breve:7 }
theModeG = \markup { \hspace #91 "G Mixolydian" }
theNotesG = { g,4 a b c d e f g }
theLyricsG = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordA = \chordmode { a\breve:min7 }
theModeA = \markup { \hspace #95 "A Aeolian" }
theNotesA = { a,4 b c d e f g a }
theLyricsA = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordB = \chordmode { b\breve:min7.5- }
theModeB = \markup { \hspace #95 "B Locrian" }
theNotesB = { b,4 c d e f g a b }
theLyricsB = \lyricmode { ""4 "" "" "" "" "" "" "" }

\include "include/modes.ly"
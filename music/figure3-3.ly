\version "2.24.4"
\include "include/prologue.ly"

theChordC = \chordmode { c\breve:maj7 }
theModeC = \markup { \hspace #98 "Ionian" }
theNotesC = { c'4 d e f^\markup\center-align{"\"avoid\" note"} g a b c }
theLyricsC = \lyricmode { "" "" "" "4th" "" "" "" "" }

theChordD = \chordmode { d\breve:min7 }
theModeD = \markup { \hspace #97 "Dorian" }
theNotesD = { d,4 e f g a b c d  }
theLyricsD = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordE = \chordmode { e\breve:sus7.9- }
theModeE = \markup { \hspace #96 "Phrygian" }
theNotesE = { e,4 f g a b c d e }
theLyricsE = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordF = \chordmode { f\breve:maj7.11+ }
theModeF = \markup { \hspace #98 "Lydian" }
theNotesF = { f,4 g a b c d e f  }
theLyricsF = \lyricmode { "" "" "" "♯4" "" "" "" "" }

theChordG = \chordmode { g\breve:7 }
theModeG = \markup { \hspace #93 "Mixolydian" }
theNotesG = { g,4 a b c^\markup\center-align{"\"avoid\" note"} d e f g }
theLyricsG = \lyricmode { "" "" "" "11th" "" "" "" "" }

theChordA = \chordmode { a\breve:min6- }
theModeA = \markup { \hspace #97 "Aeolian" }
theNotesA = { a,4 b c d e f g a }
theLyricsA = \lyricmode { ""4 "" "" "" "" "" "" "" }

theChordB = \chordmode { b\breve:min7.5- }
theModeB = \markup { \hspace #97 "Locrian" }
theNotesB = { b,4 c^\markup\center-align{"\"avoid\" note"} d e f g a b }
theLyricsB = \lyricmode { "" "♭9" "" "" "♭5" "" "" "" }

theChordExtra = \chordmode { g\breve:sus7 }
theModeExtra = \markup { \hspace #93 "Mixolydian" }
theNotesExtra = { g,4 a b c^\markup\center-align{"no \"avoid\" note"} d e f g }
theLyricsExtra = \lyricmode { "" "" "" "11th" "" "" "" "" }
theRomanExtra = \markup { "V" }

\include "include/modes+.ly"
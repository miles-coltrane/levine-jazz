\version "2.24.4"
\include "include/prologue.ly"

theChordC = \chordmode { c\breve:maj7.3- }
theModeC = \markup { \hspace #92 "minor-major" }
theNotesC = { c'4 d ef f g a b c }
theLyricsC = \lyricmode { "" "" "" "" "" "" "" "" }

theChordD = \chordmode { d\breve:sus7.9- }
theModeD = \markup { "" }
theNotesD = { d,4 ef f g a b c d  }
theLyricsD = \lyricmode { "" "♭9" "" "" "" "" "" "" }

theChordE = \chordmode { ef\breve:maj7.5+ }
theModeE = \markup { \hspace #84 "Lydian augmented" }
theNotesE = { ef,4 f g a b c d e }
theLyricsE = \lyricmode { "" "" "" "♯4" "♯5" "" "" "" }

theChordF = \chordmode { f\breve:7.11+ }
theModeF = \markup { \hspace #85 "Lydian dominant" }
theNotesF = { f,4 g a b c d ef f  }
theLyricsF = \lyricmode { "" "" "" "♯11" "" "" "" "" }

theChordG = \chordmode { g\breve:maj7.3-/g }
theModeG = \markup { "" }
theNotesG = { g,4 a b c d ef f g }
theLyricsG = \lyricmode { "" "" "" "" "♭5" "♭6" "" "" }

theChordA = \chordmode { a\breve:min7.5- }
theModeA = \markup { \hspace #67 "half-diminished (or) Locrian #2" }
theNotesA = { a,4 b c d ef f g a }
theLyricsA = \lyricmode { "" "" "" "" "" "" "" "" }

theChordB = \chordmode { b\breve:alt }
theModeB = \markup { \hspace #64 "altered (or) diminished whole-tone" }
theNotesB = { b,4 c d ef f g a b }
theLyricsB = \lyricmode { "" "♭9" "♯9" "" \markup \center-column {"♯11" "♭5"} \markup \center-column { "♭13" "♯5"} "" "" | }

\include "include/modes.ly"

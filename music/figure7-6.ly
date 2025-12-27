\version "2.24.4"
\include "include/prologue.ly"

theChordsA = \chordmode { g\breve:min7 }
theTrebleA = \relative { g'4 a bf c d e f g }
theModeA = \markup { "G Dorian mode" }
theLyricsA = \lyricmode{ "" "" "" "" "" "" "" "" }

theChordsB = \chordmode { g\breve:min7 }
theTrebleB = \relative { g'4 a bf b c d e f g }
theModeB = \markup { "G bebop Dorian scale" }
theLyricsB = \lyricmode { "" "" "3rd" \markup\center-column{"chromatic" "passing" "note"} "4th" "" "" "" "" }

\include "include/bebop.ly"
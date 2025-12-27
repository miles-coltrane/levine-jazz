\version "2.24.4"
\include "include/prologue.ly"

theChordsA = \chordmode { c\breve:7 }
theTrebleA = \relative { c'4 d e f g a bf c }
theModeA = \markup { "C Mixolydian mode" }
theLyricsA = \lyricmode{ "" "" "" "" "" "" "" "" }

theChordsB = \chordmode { c\breve:7 }
theTrebleB = \relative { c'4 d e f g a bf b c }
theModeB = \markup { "C bebop dominant scale" }
theLyricsB = \lyricmode { "" "" "" "" "" "" "7th" \markup\center-column{"chromatic" "passing" "note"} "root" }

\include "include/bebop.ly"
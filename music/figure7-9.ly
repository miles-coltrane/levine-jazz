\version "2.24.4"
\include "include/prologue.ly"

theChordsA = \chordmode { c\breve:maj7.3- }
theTrebleA = \relative { c'4 d ef f g a b c }
theModeA = \markup { "C melodic minor scale" }
theLyricsA = \lyricmode{ "" "" "" "" "" "" "" "" }

theChordsB = \chordmode { c\breve:maj7.3- }
theTrebleB = \relative { c'4 d ef f g gs a b c }
theModeB = \markup { "C bebop melodic minor scale" }
theLyricsB = \lyricmode { "" "" "" "" "5th" \markup\center-column{"chromatic" "passing" "note"} "6th" "" "" }

\include "include/bebop.ly"
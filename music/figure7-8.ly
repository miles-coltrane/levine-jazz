\version "2.24.4"
\include "include/prologue.ly"

theChordsA = \chordmode { c\breve:maj7 }
theTrebleA = \relative { c'4 d e f g a b c }
theModeA = \markup { "C major scale" }
theLyricsA = \lyricmode{ "" "" "" "" "" "" "" "" }

theChordsB = \chordmode { c\breve:maj7 }
theTrebleB = \relative { c'4 d e f g gs a b c }
theModeB = \markup { "G bebop major scale" }
theLyricsB = \lyricmode { "" "" "" "" "5th" \markup\center-column{"chromatic" "passing" "note"} "6th" "" "" }

\include "include/bebop.ly"
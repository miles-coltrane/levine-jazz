\version "2.24.4"
\include "include/prologue.ly"

theChordsA = \chordmode { g\breve:min7 }
theTrebleA = \relative { g'4 a bf b c d e f g }
theModeA = \markup { "G bebop Dorian mode" }
theLyricsA = \lyricmode{ "" "" "" "" "" "" "" "" "" }

theChordsB = \chordmode { c\breve:7 }
theTrebleB = \relative { c'4 d e f g a bf b c }
theModeB = \markup { "C bebop dominant scale" }
theLyricsB = \lyricmode { "" "" "" "" "" "" "" "" "" }

\include "include/bebop.ly"
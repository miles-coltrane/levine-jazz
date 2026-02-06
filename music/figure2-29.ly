\version "2.24.4"
\include "include/prologue.ly"

% On The Sunny Side of the Street, Jimmy McHugh
theTempo = 180
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g:7 | e4:min7 a:7 d:min7 g:7 |
}
theTreble = \relative {
  <<
    {
      \stemDown c'2 b4. <g~ d'~>8 |
      <g d'>4 <g c> <f c'> <f b>
    }
    \new Voice { \voiceTwo
      \stemUp c''4 a4 f8 e d \tieUp g~ |
      g1
    }
  >>
  \bar "||"
}
theBass = \relative {
  d,2 <g f'>4. e8~ |
  e4 a d, g |
  \bar "||"
}
theLyrics = \lyricmode {
  II V "    III" VI II V
}

\include "include/dual+lyrics.ly"

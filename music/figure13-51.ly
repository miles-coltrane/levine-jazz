\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 c2:7 | a4:min7 d4:7 g4:min7 g4:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {
      \stemUp
      d'8 bf' g' f' e'4 d''4 |
      c''1
    }
    \new Voice { \voiceTwo
      bf2 <bf d'>2 |
      g'4 fs' <f' bf'> e'
    }
  >>
  \bar "||"
}
theBass = {
  <g, f>2 c2 |
  a,4 d4 g,4 c4
  \bar "||"
}

\include "include/dual.ly"

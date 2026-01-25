\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 | g1:7 | f1:maj7.3- | e1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 2 c''4~ \tuplet 3/2 {c''8 a' f'} |
  <<
    { \stemUp
      \tuplet 3/2 {e'8 f'8 e'8~} e'2. |
      e'2 d'8 e'8 f'8 fs'8
    }
    \new Voice {\voiceTwo
      b1 | <af c'>1
    }
  >> |
  <g d' g'>1
  \bar "||"
}
theBass = {
  \partial 2 r2 | <g, f>1 | <f, d>1 | e,1
  \bar "||"
}

\include "include/dual.ly"

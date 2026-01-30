\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:min7 | c1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <<
    { \stemUp
      bf'8 c''8 bf'2.
    }
    \new Voice { \voiceTwo
      <d' f'>1
    }
  >> |
  <d' ef' g' bf'>1
  \bar "||"
}
theBass = {
  <g, f>1 | c1
  \bar "||"
}

\include "include/dual.ly"

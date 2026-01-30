\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf2:maj7 ef2:6 | d2:min7 df2:7.11+| c1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <<
    { \tieUp
      f'2~ f'8 bf8 d'8 f'8 | g'8 a'8 g'2.
    }
    \new Voice { \voiceTwo
      <a d'>2 <g c'>2 | <c' e'>2 <cf' ef'>2
    }
  >> |
  <bf d' ef' g'>1
  \bar "||"
}
theBass = {
  bf,2 ef,2 | <d f a>2 <df f>2 | c1
  \bar "||"
}

\include "include/dual.ly"

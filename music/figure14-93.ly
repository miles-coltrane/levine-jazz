\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | f1:7 | bf1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <<
    {\stemUp\tieUp
      g'2~ g'8 c'8 ef'8 g'8 |
    }
    \new Voice {\voiceTwo
      <bf d' ef'>1
    }
  >> |
  <a d' a'>1 |
  <c' d' f' a'>1
  \bar "||"
}
theBass = {
  c1 |
  <f, ef>1 |
  <bf, a>1
  \bar "||"
}

\include "include/dual.ly"

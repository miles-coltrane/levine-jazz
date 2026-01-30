\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | g1:min7 | c1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  \partial 4 a'4
  <<
    {\stemUp\tieUp
      bf'1~ | bf'1
    }
    \new Voice {\voiceTwo
      <bf f'>1 |
      <bf d' e'>1
    }
  >>
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <g, f>1 | <c e>1
  \bar "||"
}

\include "include/dual.ly"

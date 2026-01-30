\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | af2:min7 df2:7 | g2:min7 c2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  \partial 4 a'4
  <<
    {\stemUp\tieUp
      bf'1~ | bf'1
    }
    \new Voice {\voiceTwo
      <cf' gf'>2 <cf' f'>2 |
      <bf f'>2 <bf e'>2
    }
  >>
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <af, gf>2 <df f>2 |
  <g, f>2 <c e>2
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  cs2:min7 fs2:7 | c2:min7.5- f2:7.9- | bf1:6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <<
    {\stemUp\tieUp
      <e' gf'~>1 |
      gf'4 gf'4 gf'4 f'4 |
      f'1~ |
      f'1
    }
    \new Voice {\voiceTwo \tieDown
      b2 as2 |
      <bf ef'>2 <a d'>2 |
      <g~ c'~>1 |
      <g c'>1
    }
  >>
  \bar "||"
}
theBass = {
  cs,2 fs,2 |
  c,2 <f, ef>2 |
  <bf,~ d~>1 |
  <bf, d>1
  \bar "||"
}

\include "include/dual.ly"

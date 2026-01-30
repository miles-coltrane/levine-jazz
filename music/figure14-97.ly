\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7.5- | f1:7.9- | bf1:6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <<
    {\stemUp\tieUp
      gf'1~ |
      gf'4 gf'4 gf'4 f'4 |
      f'1~ |
      f'1
    }
    \new Voice {\voiceTwo \tieDown
      <bf ef'>1 |
      <a d'>1
      <g~ c'~>1 |
      <g c'>1
    }
  >>
  \bar "||"
}
theBass = {
  c1 |
  <f, ef>1 |
  <bf,~ d~>1 |
  <bf, d>1
  \bar "||"
}

\include "include/dual.ly"

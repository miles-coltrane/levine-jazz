\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:7/ef ef2
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <fs b f'>4. <g~ c'~ ef'~>8 <g c' ef'>2
  \bar "||"
}
theBass = {
  <<
    {\stemUp a,4. bf,8~ bf,2}
    \new Voice {\voiceTwo ef,1}
  >>
  \bar "||"
}

\include "include/dual.ly"

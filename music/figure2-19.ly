\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 c:7 | af:min7 df:7 |
}
theTreble = \relative {
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(right)
  <f'\seventh bf c~>2
  <<
    { c'8 c8 \tuplet 3/2 {c8 f8 c8} }
    \new Voice { \voiceTwo e,2\third }
  >>
  |
  <<
    { <cf' df>1 }
    \new Voice { \voiceTwo gf2\seventh f\third}
  >>
  \bar "||"
}
theBass = \relative {
  g,2 c | af df |
  \bar "||"
}

\include "include/dual.ly"

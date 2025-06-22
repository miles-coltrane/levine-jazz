\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:sus7
}
theTreble = \relative {
  \set fingeringOrientations = #'(right)
  <c'\fourth f a b\third>1 \bar "||"
  <f b\third d> \bar "||"
  <f b\third e> \bar "||"
  <b\third e a> \bar "||"
  r2 <c\fourth f b\third> \bar "||"
}
theBass = {
  \set fingeringOrientations = #'(right)
  <f, g>1\bar "||"
  <g c'\fourth>1\bar "||"
  <g c'\fourth>1\bar "||"
  <g c'\fourth f'>1\bar "||"
  <<
  {
    d2\rest \stemUp<a d' g'>2
  }
  \new Voice { \voiceTwo
    \set Staff.pedalSustainStyle = #'mixed
    g,1\sustainOn
  }
  >>
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:sus7
}
theTreble = \relative {
  \set fingeringOrientations = #'(left right)
  <bf\fourth ef\seventh g\ninth a\third>1
  \bar "||"
}
theBass = {
  \set fingeringOrientations = #'(right)
  f1\root
  \bar "||"
}

\include "include/dual.ly"

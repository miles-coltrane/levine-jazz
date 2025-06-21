\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 6/4
theChords = \chordmode {
  fs1:sus7.9-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  r2 fs'8 g a b cs ds_\markup\center-align{"6th"} e fs^\markup\right-align{"second mode, E melodic minor"}
  \bar "||"
}
theBass = {
  <fs, e g b cs'>1 s2
  \bar "||"
}

\include "include/dual.ly"

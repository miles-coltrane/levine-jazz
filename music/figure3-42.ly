\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  fs1:sus7 | fs1:sus9- | f1:7
}
theTreble = \relative {
  <e gs b cs>1 |
  <e g b cs>2 b'4 as4 |
  <g a ef'>1
  \bar "||"
}
theBass = \relative {
  \skip \f % spacer to set voice volume
  r8 fs,4 fs fs fs8~ |
  fs8 fs4 fs4 fs4. |
  f1
  \bar "||"
}

\include "include/dual.ly"

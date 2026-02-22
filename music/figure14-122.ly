\version "2.24.4"
\include "include/prologue.ly"

% Spring Is Here, Kenny Barron, Maybeck Recital Hall Series
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g4:maj7 g4:maj7.11+ g4:maj7.5+ g4:6 |
  g4:maj7.5+ g:6 fs4:dim/g g4:maj7 |
  a1/g |
  c1:maj7.3-/g
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <d fs b>4 <fs g cs> <fs b ds> <g b e> |
  <b ds fs> <b e g> <c ef g a> <d fs g b> |
  <e a cs>1 |
  <ef g b d>1
  \bar "||"
}
theBass = {
  g,1 |
  <g, fs>1 |
  <g, g>1 |
  <g, g>1
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  \set chordChanges = ##f % show chords even when unchanged
  % TODO: show C#4 not "C#4 sus#4 3"
  c1:6 | c1:6.9 | c1:6.9 | c:4+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <a e'>1
  \bar "||"
  r1
  \bar "||"
  <d' g' c''>1
  \bar "||"
  <a d' fs'>1
  \bar "||"
}
theBass = {
  c,1
  \bar "||"
  <e g a d'>1
  \bar "||"
  <e a>1
  \bar "||"
  <c e>1
  \bar "||"
}

\include "include/dual.ly"

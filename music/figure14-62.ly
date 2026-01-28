\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:maj7/a a:sus4.9- |
  d2:maj7/a a:sus4.9- |
  d2:maj7/a a:sus4.9- |
  d2:maj7/a
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <a cs' fs' a'>2  <bf d' e' a'>2 |
  <a cs' fs' a'>2  <bf d' e' a'>2 |
  <a cs' fs' a'>2  <bf d' e' a'>2 |
  <a cs' fs' a'>2
  \bar "||"
}
theBass = {
  <a,, a,>2 <a,, a,>2 |
  <a,, a,>2 <a,, a,>2 |
  <a,, a,>2 <a,, a,>2 |
  <a,, a,>2
  \bar "||"
}

\include "include/dual.ly"

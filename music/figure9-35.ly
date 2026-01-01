\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r2 r4 \tuplet 3/2 {e'8 b fs'} |
  \tuplet 3/2 {cs gs' e}
  \tuplet 3/2 {b' fs cs'}
  \stemUp
  \tuplet 3/2 {gs e' b}
  \stemDown
  \tuplet 3/2 {fs' cs r}

  \bar "||"
}

\include "include/treble.ly"

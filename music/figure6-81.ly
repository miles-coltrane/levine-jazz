\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  % CHORD NAMES HERE
  d1:min7 | r | b:min7.5- |
  e:alt
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \tuplet 3/2 {e''8 f g}
  \tuplet 3/2 {e f g~} g4
  \tuplet 3/2 {e8 f g~} |
  \tuplet 3/2 {g e f} g4
  \tuplet 3/2 {e8 f g~}
  \tuplet 3/2 {g e f} |
  g4
  \tuplet 3/2 {cs,8 f g~}
  \tuplet 3/2 {g e f} g4 | \break
  \tuplet 3/2 {e8 f g~} g4 r2
  \bar "||"
}

\include "include/treble.ly"

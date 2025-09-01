\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  ds2.:sus4.9- | % TODO: lose the sus4, sus instead
  r |
  fs:sus7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.5
  r8 fs''4 fs4 cs8 |
  e2~ e8 b8 |
  ds2~ \tuplet 3/2 {ds8 ds8 as8} | cs2.
  \bar "||"
}

\include "include/treble.ly"

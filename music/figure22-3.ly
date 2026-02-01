\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  c''4^\markup\left-align{\small "African (or \"rumba\") clave"} r8 c8 r4 r8 c8 |
  r4 c4 c4 r4
  \bar "||"
}

\include "include/treble.ly"

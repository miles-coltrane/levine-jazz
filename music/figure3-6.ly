\version "2.24.4"
\include "include/prologue.ly"

theTempo = 125
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:maj7
}
theTreble = \relative {
  r8 e'' \tuplet 3/2 {b d e} b16 g16 r8 a16 fs16 d8 | e8 a,8~ a2. |
  \bar "||"
}

\include "include/treble.ly"

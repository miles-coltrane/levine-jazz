\version "2.24.4"
\include "include/prologue.ly"

% Flamingo, Herman Chittison
theTempo = 130
theKey = c
theSignature = 3/4
theChords = \chordmode {
  af2:min6 df4:7 | bf2:min7 ef4:7
}
theTreble = \relative {
  r8 \tuplet 3/2 {f''16 af16 g} ef cf af f \tuplet 3/2 {ef8 cf8 ef16 cf16 }
  \bar "||"
  \tupletUp
  \tuplet 3/2 {df'4 f,8}
  \tupletDown
  \tuplet 3/2 {
    \tupletUp
    bf8 df8 \tuplet 3/2 {g,16 bf16 df16}
  }
  \tupletDown
  \tuplet 6/4 {g16 bf df bf g f}
  \bar "||"
}

\include "include/treble.ly"

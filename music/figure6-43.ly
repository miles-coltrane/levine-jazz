\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  f2.:min | g:min/f | f:sus7.9- | r | ef:7/f |
  r | r | b:sus7.9-
}
theTreble = \relative {
  \tuplet 3/2 {f'8 af c~} c2 |
  \tuplet 3/2 {g8 bf d~} d2 |
  \tuplet 3/2 {c8 af f~} f2 | r2. |
  \tuplet 3/2 {g8 af bf~} bf2 | \break
  \tuplet 3/2 {g8 af bf~} bf2 |
  \tuplet 3/2 {c8 df ef~} ef4. e8 |
  fs,2.
  \bar "||"
}

\include "include/treble.ly"

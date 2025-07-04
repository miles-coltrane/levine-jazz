\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7.5+
}
theTreble = \relative {
 <gf bf>4 <bf d>4 <af c>4 <c e>8 <bf d>8 |
 r8 <d fs>8 <c e>4 <e gs>4 <d fs>8 <fs as>8
  \bar "||"
}

\include "include/treble.ly"

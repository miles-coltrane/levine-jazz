\version "2.24.4"
\include "include/prologue.ly"

theTempo = 60
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | c2:maj7 g:sus7 | c:maj7 g:sus7
}
theTreble = \relative {
  \partial 4 r4 |
  r4 <b c e>4 <g a c f>2 |
  r4 <b c e>4 <g a c f>2
  \bar "||"
}
theBass = \relative {
  \partial 4 g,4 | c,2. g'4 | c,2. g'4
  \bar "||"
}

\include "include/dual.ly"

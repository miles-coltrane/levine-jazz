\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | g:7 | c:min |
  f:7 | bf:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r2 cs''8 d bf g | b c a f as b gs e | a bf g ef gs a f d | \break
  fs g ef c  f df a f |
  d'4
  \bar "||"
}

\include "include/treble.ly"

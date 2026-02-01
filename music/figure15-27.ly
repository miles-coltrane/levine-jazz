\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:maj7 e4:min7 a4:7 | d2:maj7 bf4:min7 ef4:7 | af2:maj7 g4:min7 c4:7 | f2:maj7 cs4:min7 fs4:7 |
  b2:maj7 e4:min7 a4:7 | d2:maj7 cs4:min7 fs4:7 | b1:maj7 | fs1:sus4 | b1:maj7 | fs1:sus4
}
theTreble =  {
  <as ds'>2 <g d'>4 <g cs'>4 |
  <fs cs'>2 <af df'>4 <g df'>4 |
  <g c'>2 <bf f'>4 <bf e'>4 |
  <a e'>2 <b e'>4 <as e'>4 | \break
  <as ds'>2 <g d'>4 <g cs'>4 |
  <fs cs'>2 <b e'>4 <as e'>4 |
  <as ds'>1 |
  <gs b e'>1 |
  <as ds'>1 |
  <gs b e'>1
  \bar "||"
}
theBass = {
  b,,2 e,4 a,4 |
  d,2 bf,4 ef,4 |
  af,2 g,4 c,4 |
  f,2 cs,4 fs,4 | \break
  b,,2 e,4 a,4 |
  d,2 cs,4 fs,4 |
  b,,1 |
  fs,1 |
  b,,1 |
  fs,1
  \bar "||"
}

\include "include/dual-aligned.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e2:min7 f2:7 | bf2:maj7 df2:7 | gf2:maj7 a2:7 | d1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3.4
  <g d'>2 <a ef'>2 |
  <a d'>2 <cf' f>2 |
  <bf f'>2 <g cs'>2 |
  <fs cs'>1
  \bar "||"
}
theBass = {
  e,2 f,2 |
  bf,2 df,2 |
  gf,2 a,2|
  d,1
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  \small
  "II in D"2 "V - I in B♭ - - - - "1 "V - I in G♭ - - - -"1 "V - I in D - - - -"1.
}

\include "include/dual+lyrics2.ly"

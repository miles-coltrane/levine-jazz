\version "2.24.4"
\include "include/prologue.ly"

theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:7 | f:7 | c:7 |  r  | f:7 | r |
  c:7  |  r  | g:7 | f:7 | c:7 | g:7
}
theTreble = \relative {
  <bf e>1 | <a ef'>1 | <bf e>1 | <bf e>1 | <a ef'>1 | <a ef'>1 | \break
  <bf e>1 | <bf e>1 | <b f'>1 | <a ef'>1 | <bf e>1 | <b f'>1
  \bar "||"
}
theBass = {
  c,1 | f,1 | c,1 | c,1 | f,1 | f,1 | \break
  c,1 | c,1 | g,1 | f,1 | c,1 | g,1
  \bar "||"
}

\include "include/dual-aligned.ly"

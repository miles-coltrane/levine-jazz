\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  bf2.:7 | b:min7.5- | f:/c | f:7.9-11+
}
theTreble = \relative {
  <c' d>2. |
  <cs e>2. |
  <a c f>2. |
  <fs' a b d>2.
  \bar "||"
}
theBass = {
  <bf, af>2. |
  <b, f a>2. |
  c2. |
  <f a ef'>2. |
  \bar "||"
}

\include "include/dual.ly"

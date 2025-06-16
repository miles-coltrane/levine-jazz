\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7 | g:7
}
theTreble = \relative {
  \set fingeringOrientations = #'(right) % TODO: figure why not set to R
  g'8 a b c_\markup\center-align{"4th"} d e f g \bar "||"
  g,8 a b c_\markup\center-align{"4th"} d e f g \bar "||"
  \bar "||"
}
theBass = {
  <g c' f'>1 \bar "||"
  <g b d' f'>1 \bar "||"
  \bar "||"
}

\include "include/dual.ly"

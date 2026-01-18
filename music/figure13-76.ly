\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:7.9+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \repeat volta 2 { \bar ".|:"
    r4 <g df' gf'>4 <g df' gf'>8 <g df' gf'>4 <g~ df'~ gf'~>8 |
    <g df' gf'>4 <g df' gf'>4 <g df' gf'>2
  }
}
theBass = {
  \repeat volta 2 { \bar ".|:"
    af,1 | af,2. bf,,4
  }
}

\include "include/dual.ly"

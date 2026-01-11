\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | d1:min7 | e2:min7.5- a2:7.9-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 d'4 |
  <<
    {\stemUp f2. d4 | e4 e2.}
    \new Voice { \voiceTwo  <a, c>1 | <g bf>2 <g  bf cs>2}
  >>
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  d,1 | e,2 | a,2
  \bar "||"
}

\include "include/dual.ly"

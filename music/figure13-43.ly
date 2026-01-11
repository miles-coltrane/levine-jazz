\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | e1:min7.5- | a:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  \partial 4 bf'4
  \bar "||"
  \tieUp
  <bf d' a'~>1 |
  <<
    {a'4 g'4 a'4 bf'4}
    \new Voice { \voiceTwo <bf cs'>1}
  >>
  \bar "||"
}
theBass = {
  \partial 4 r4
  \bar "||"
  <e g>1|
  <a, g>1
  \bar "||"
}

\include "include/dual.ly"

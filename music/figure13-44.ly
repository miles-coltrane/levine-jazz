\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7.5- g2:alt | c:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  <<
    { r8 f'8 g'8 f'8 ef'4  b4}
    \new Voice { \voiceTwo c'2 b2}
  >> |
  <bf d'>8 <a c'>8 <a c'>8 <a~ c'~>8 <a c'>2
  \bar "||"
}
theBass = {
  <d af>2 <g, f>2 | <c e>1
  \bar "||"
}

\include "include/dual.ly"

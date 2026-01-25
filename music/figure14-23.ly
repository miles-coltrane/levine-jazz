\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7.5- | g:alt | c:maj7.3-
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  f''4. ef''8 d''4 c''4 |
  <<
    {bf'2. af'4}
    \new Voice { \voiceTwo <cf' ef'>1 }
  >> |
  <b d' g'>2 <af' b' f''>4. <g'~ a'~ ef''~>8 |
  <g' a' ef''>1
  \bar "||"
}
theBass = {
  <d g af c'>1 |
  <g, f>1 |
  <c ef>2 d'4. c'8~ |
  c'1
  \bar "||"
}

\include "include/dual.ly"

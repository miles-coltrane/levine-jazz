\version "2.24.4"
\include "include/prologue.ly"

% Here's That Rainy Day, Jimmy Van Heusen
theTempo = 70
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | d:7.9- | g:sus7
}
theTreble = {
  <<
    {d'4 d' d' d'}
    \new Voice { \voiceTwo <g c'>1}
  >> |
  <fs c' d'>4
  <a d' fs'>
  <c' f' a'>
  <ef' af' c''> |
  <c' f' a' b'>1
  \bar "||"
}
theBass = {
  a,1 | d,4 ef fs a | g1
  \bar "||"
}

\include "include/dual.ly"

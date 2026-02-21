\version "2.24.4"
\include "include/prologue.ly"

% Nica's Dream, Art Blakey, The Original Jazz Messengers
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:7.11+ | ef4:min7 af2:sus4.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    { a'4 bf'8 bf8 }
    \new Voice {\voiceTwo <df' f'>2 }
  >>
  r8 df'4 ef'8 |
  <df' f'>4 <a df'>2
  \bar "||"
}
theBass = {
  <ef g>1 |
  <ef gf bf>4 <af, gf>2
  \bar "||"
}

\include "include/dual.ly"

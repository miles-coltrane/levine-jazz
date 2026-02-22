\version "2.24.4"
\include "include/prologue.ly"

% But Beautiful, Jimmy Van Heusen
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | ef2:7/g g2
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 4 cs'8 d'8
  \bar "||"
  <<
    {\stemUp a'8 a'8~ a'2.}
    \new Voice {\voiceTwo <as ds'>2 <b e'>2}
  >>
  \bar "||"
}
theBass = {
  \partial 4 r4
  \bar "||"
  <<
    {\stemUp cs2 d2}
    \new Voice {\voiceTwo g,1}
  >>
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

% Star Eyes, Gene DePaul
theTempo = 150
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <<
    {\stemUp f'4. ef'8~ ef'2}
    \new Voice {\voiceTwo <g c'>1}
  >>
  \bar "||"
}
theBass = {
  <ef, bf,>1
  \bar "||"
}

\include "include/dual.ly"

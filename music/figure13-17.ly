\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight, Victor Young
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | g1:7.5+ | r c:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 d'4 |
  <<
    {\tieUp ef1~ | ef 4 ef4 ef4 d}
    \new Voice {\voiceTwo b1~ | b1}
  >> |
  <bf ef f>1
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <g,~ f~>1 |
  <g, f>1  |
  c1
  \bar "||"
}

\include "include/dual.ly"

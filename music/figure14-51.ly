\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight, Victor Young
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | e1:min7 | a1:7 | c1:min7 | f1:7
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4 bf'4
  \bar "||"
  \tieUp
  <g d' a'~>1 |
  <<
    {a'4 g'4 a'4 bf'4}
    \new Voice {\voiceTwo cs'1 }
  >> |
  <bf d' f'>1 |
  <a d' f'>1
  \bar "||"
}
theBass = {
  \partial 4 r4
  \bar "||"
  e,1 |
  <a, g>1 |
  <c ef g>1|
  <f, ef>1
  \bar "||"
}

\include "include/dual.ly"

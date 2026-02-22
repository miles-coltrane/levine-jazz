\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight, Victor Young
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | a1:sus4.9- | r1 | f1:sus4
}
theTreble =  {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4 bf'4
  \bar "||"
  \tieUp
  <bf~ d'~ e'~ a'~>1 |
  <<
    {a'4 g'4 a'4 bf'4}
    \new Voice {\voiceTwo <bf d' e'>1 }
  >> |
  <g~ bf~ ef'~ f'~>1 |
  <g bf ef' f'>1
  \bar "||"
}
theBass = {
  \partial 4 r4
  \bar "||"
  <a,~ a~>1 |
  <a, a>1 |
  <f,~ f~>1
  <f, f>1
  \bar "||"
}

\include "include/dual.ly"

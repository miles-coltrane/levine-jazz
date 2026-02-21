\version "2.24.4"
\include "include/prologue.ly"

% Speak No Evil, Wayne Shorter, Speak No Evil
theTempo = 140
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r4. | c1:min7 | df:maj7 | c:min7 | df:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 g'8 c'' c' \bar "||"
  <bf ef' f'~>1 |
  <c' ef' f'~>1 |
  <bf ef' f'~>1 |
  <c' ef' f'>1
  \bar "||"
}
theBass = {
  \partial 4. r8 r4 |
  <c, g,>1 | <df, af,>1 |
  <c, g,>1 | <df, af,>1
  \bar "||"
}

\include "include/dual.ly"

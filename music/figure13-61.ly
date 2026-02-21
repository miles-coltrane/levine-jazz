\version "2.24.4"
\include "include/prologue.ly"

% Have You Met Miss Jones, Richard Rodgers
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:7 bf2:7.11+ | a:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp  a'4 bf'4 c''4 d''4 }
    \new Voice { \voiceTwo e'2 <e' g'>2 }
  >> |
  <g' c'' e''>1
  \bar "||"
}
theBass = {
  <c bf>2 <bf, af>2| <a, g>1
  \bar "||"
}

\include "include/dual.ly"

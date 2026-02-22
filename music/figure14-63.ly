\version "2.24.4"
\include "include/prologue.ly"

% My Foolish Heart, Victor Young
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1 | d2:min7.5- g2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp d''4 d''8 d''8 d''8 d''8 c''8 bf'8}
    \new Voice {\voiceTwo <d' a'>1}
  >> |
  <f af c' d'>2 <f b d'>2
  \bar "||"
}
theBass = {
  <bf, f>1 | d,2 g,2
  \bar "||"
}

\include "include/dual.ly"

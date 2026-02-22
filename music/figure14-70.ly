\version "2.24.4"
\include "include/prologue.ly"

% My Foolish Heart, Bobby Hutcherson, Solo/Quartet
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:min7 | ef2:min7 af2:7 | bf1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    { \stemUp
      bf'4 bf'8 bf'8 bf'8 a'8 g'8 a'8 |
      bf'4 bf'2 bf'8 c''8
    }
    \new Voice {\voiceTwo
      <bf f'>1 | <bf ef'>2 <c' f'>2
    }
  >> |
  <f' a' d''>1
  \bar "||"
}
theBass = {
  <g, f>1 | ef,2 <af, gf>2 | <bf, a>1
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

% My Foolish Heart, Victor Young
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:maj7 | g1:min7 | c1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <<
    { \tieUp
      f'2~ f'8 bf8 d'8 f'8 | g'8 a'8 g'2.
    }
    \new Voice { \voiceTwo
      <a d'>1 | <bf d'>1
    }
  >> |
  <bf d' ef' g'>1
  \bar "||"
}
theBass = {
  bf,1 | <g, f>1 | c1
  \bar "||"
}

\include "include/dual.ly"

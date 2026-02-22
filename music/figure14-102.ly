\version "2.24.4"
\include "include/prologue.ly"

% My Foolish Heart, Victor Young
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:maj7 | g1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <<
    {\stemUp\tieUp
      a'2 a'8 d'8 f'8 a'8 | bf'8 c''8 bf'2.
    }
    \new Voice {\voiceTwo
      <c' d' f'>1 | <d' f'>1
    }
  >>
  \bar "||"
}
theBass = {
  <bf, a>1 | g,1
  \bar "||"
}

\include "include/dual.ly"

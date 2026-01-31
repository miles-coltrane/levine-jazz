\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:min7 |
  af1:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp\tieUp
      af'8 bf'8 bf'8 af'8  af'8 ef'8 f'8 gf'8 |
      af'8 bf'8 bf'8 af'8 af'8 ef'4.
    }
    \new Voice {\voiceTwo
      df'1 |
      <c' f'>1
    }
  >>
  \bar "||"
}
theBass = {
  <ef gf>1 |
  <af, gf>1
  \bar "||"
}

\include "include/dual.ly"

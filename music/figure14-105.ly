\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1 | fs1:dim |  f1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  <<
    {\stemUp\tieUp
      r4 c'4 d'4 ef'4~ |
      ef'4 c'4 d'4 ef'4 |
      f'8 bf8 bf4 bf2
    }
    \new Voice {\voiceTwo
      g1 |
      a1 |
      af1
    }
  >>
  \bar "||"
}
theBass = {
  <ef, bf,>1 |
  <fs, ef>1  |
  <f, ef>1
  \bar "||"
}

\include "include/dual.ly"

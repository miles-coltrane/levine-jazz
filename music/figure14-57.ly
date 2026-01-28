\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:min7 | r1 | f1:min6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp
      r4 f'4 f'4 g'4 | g'4 a'8 a'8~ a'8 g'8 gf'8
    }
    \new Voice {\voiceTwo \tieDown
      <af~ df'~>1 <af df'>1
    }
  >> |
  <af c' f'>1
  \bar "||"
}
theBass = {
  bf,1~ | bf,1 | <f, d>1
  \bar "||"
}

\include "include/dual.ly"

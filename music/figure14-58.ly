\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:sus4 | r1 | af1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp
      r4 f'4 f'4 g'4 |
      g'4 a'4 \tuplet 3/2 {a'4 g'4 gf'4}
    }
    \new Voice {\voiceTwo \tieDown
      s4 <af~ df'~>2. | <af df'>1
    }
  >> |
  <c' f'>1
  \bar "||"
}
theBass = {
  <<
    {d4\rest ef2.~ | ef1}
    \new Voice {\voiceTwo ef,1~ | ef,1}
  >> |
  <af, ef>1
  \bar "||"
}

\include "include/dual.ly"

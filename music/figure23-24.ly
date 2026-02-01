\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:sus4.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 4
  <<
    {
      \set fingeringOrientations = #'(right)
      <df'\flatnine>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <c'\root f'\fourth>1
    }
  >>
  \bar "||"
}

\include "include/treble.ly"

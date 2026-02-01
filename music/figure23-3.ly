\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:sus4
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 4
  <<
    {
      \set fingeringOrientations = #'(right)
      <ef'\seventh a'\third>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <bf\fourth g'\ninth>1
    }
  >>
  \bar "||"
}
theBass = {
  \set fingeringOrientations = #'(left)
  <f\root>1
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:7.9- b1:7.9- af1:7.9- f1:7.9-
}
theTreble = {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <<
    {
      \set fingeringOrientations = #'(right)
      <a'\fifth ef''\flatnine>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <fs'\third c''\seventh>1
    }
  >> |
  <<
    {
      \set fingeringOrientations = #'(right)
      <a'\seventh ef''\third>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <fs'\fifth c''\flatnine>1
    }
  >> |
  <<
    {
      \set fingeringOrientations = #'(right)
      <a'\flatnine ef''\fifth>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <fs'\seventh c''\third>1
    }
  >> |
  <<
    {
      \set fingeringOrientations = #'(right)
      <a'\third ef''\seventh>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <fs'\flatnine c''\fifth>1
    }
  >> |
  \bar "||"
}
theBass = {
  d1 | b,1 | af,1 | f,1
  \bar "||"
}

\include "include/dual.ly"

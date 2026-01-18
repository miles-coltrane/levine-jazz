\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b1:dim | g1:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <b d' f' af'>1
  \bar "||"
  % TODO: fix vertical alignment of chord in 2 voices
  <<
   {
     \set fingeringOrientations = #'(right)
     <d'\fifth af'\flatnine>1
   }
   \new Voice { \voiceTwo
     \set fingeringOrientations = #'(left)
     <b\third f'\seventh>1
   }
  >>
  \bar "||"
}
theBass = {
  s1
  \bar "||"
    g,1
  \bar "||"
}

\include "include/dual.ly"

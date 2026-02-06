\version "2.24.4"
\include "include/prologue.ly"

% Someday My Prince Will Come, Miles Davis, Someday My Prince Will Come
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:sus7
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  % TODO: fix vertical alignment of chord in 2 voices
  <<
    {
      \set fingeringOrientations = #'(right)
      <ef'\seventh a\third>1
    }
    \new Voice { \voiceTwo
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

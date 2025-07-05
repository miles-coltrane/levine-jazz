\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  % TODO: add list of chord names
}
theTreble = {
  \override Timing.TimeSignature.stencil = ##f
  \override SpacingSpanner.spacing-increment = 3
  <<
    {
      % TODO: fix vertical alignment of chord in 2 voices
      \set fingeringOrientations = #'(right)
      <
        g'-\fifth
        d''-\ninth
      >1 |
      <
        ef'-\third
        b'-\seventh
      >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(left)
      <ef'\third b'\seventh>1 |
      <c'\root g'\fifth>
    }
  >>
  <>1 |
  <> 1
  \bar "||"
}

\include "include/treble.ly"

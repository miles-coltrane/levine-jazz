\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7 | df:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  \set fingeringOrientations = #'(right)
  \arpeggioBracket
  <b\third f'\seventh>1\arpeggio_\markup\center-align{\smaller "tritone"} |
  <cf'\seventh f'\third>1\arpeggio_\markup\center-align{\smaller "tritone"} |

  \bar "||"
}
theBass = {
  g,1 | df1
  \bar "||"
}

\include "include/dual.ly"

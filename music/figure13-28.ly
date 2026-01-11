\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:alt
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  \set fingeringOrientations = #'(right)
  \arpeggioBracket
  <df'\finger\markup{\override #'(font-name . "sans")"♯9"}
   gf'
   d''\third
  >1\arpeggio_\markup\center-align{\smaller "minor 9th"} |

  \bar "||"
}
theBass = {
  <bf, af>1
  \bar "||"
}

\include "include/dual.ly"

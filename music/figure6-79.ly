\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 5/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  \override Timing.TimeSignature.stencil = ##f
  bf'4^\markup\left-align{"common to G-7 and A♭Δ"} c d f g |
  bf,^\markup\left-align{"common to G-7, A♭Δ, and A♭Δ(♯4)"} f' s2
  \bar "||"
}

\include "include/treble.ly"

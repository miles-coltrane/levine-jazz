\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 28/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \override Timing.TimeSignature.stencil = ##f
  c'1 ef f fs g bf c^\markup\center-align{"C blues scale"}
  \bar "||"
}

\include "include/treble.ly"

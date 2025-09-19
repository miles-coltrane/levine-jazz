\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  <c' e gs>1 |
  <d fs as> |
  <e gs c> |
  <fs as d> |
  <gs c e> |
  <bf d fs>
  \bar "||"
}

\include "include/treble-aligned.ly"

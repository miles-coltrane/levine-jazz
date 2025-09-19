\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  <c' ef gf>1 |
  <cs e g> |
  <ds fs a> |
  <e g bf> |
  <fs a c> |
  <g bf df> |
  <a c ef> |
  <as cs e>
  \bar "||"
}

\include "include/treble-aligned.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 11/1
theChords = \chordmode {}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  b'1 g ef g ef! b ef! g b ef! b
  \bar "||"
}

\include "include/treble.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = df
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2

  \partial 2 r8 bf'8  \tuplet 3/2 {df ef ff} |
  \tuplet 3/2 {ef df bf} \tuplet 3/2 {ef df bf} \tuplet 3/2 {af f ef}  df bf |
  df4 ef f df8 bf | \break
  df4 ef f ef8 bf8 | df ef f df ef4 df8 bf8
  \bar "||"
}

\include "include/treble.ly"

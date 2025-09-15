\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  c'8 a c ef cs as cs e | ef c ef gf e cs e g | fs ds fs a g e g bf | \break
  a fs a c bf g bf df | c1
  \bar "||"
}

\include "include/treble.ly"

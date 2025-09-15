\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  c''8 ef c a bf df bf g | a c a fs g bf g e | fs a fs ds e g e cs | \break
  ef gf ef c cs e c as | c1
  \bar "||"
}

\include "include/treble.ly"

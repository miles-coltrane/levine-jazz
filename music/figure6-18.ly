\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7.9- | r1
  bf1:7.9- | r1
}
theTreble = \relative {
  bf8 df b d cs e d f| e g f af g bf gs b \bar "||" \break
  \tuplet 3/2 {bf, df e}
  \tuplet 3/2 {b d f}
  \tuplet 3/2 {cs e g}
  \tuplet 3/2 {d f af} |
  \omit TupletNumber
  \tuplet 3/2 {e g bf}
  \tuplet 3/2 {f af b}
  \tuplet 3/2 {g bf df}
  \tuplet 3/2 {gs, b d}
  \bar "||"
}

\include "include/treble.ly"

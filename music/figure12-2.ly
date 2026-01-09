\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  \override Timing.TimeSignature.stencil = ##f
  g'4^\markup\left-align{\concat { "G-Δ, Asus" {\super "♭9"} " , B♭Δ" {\super "♯5"} ", C7" {\super "♯11"} ", Eø, F♯7alt"} }
  a bf c d e fs g^\markup\center-align{G melodic minor scale}
  \bar "||"
}

\include "include/treble.ly"

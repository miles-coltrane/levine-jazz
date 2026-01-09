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
  d'4^\markup\left-align{\concat { "D-Δ, Esus" {\super "♭9"} " , FΔ" {\super "♯5"} ", G7" {\super "♯11"} ", Bø, C♯7alt"} }
  e f g a b cs d^\markup\center-align{D melodic minor scale}
  \bar "||"
}

\include "include/treble.ly"

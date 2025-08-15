\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 6/4
theChords = \chordmode {
  fs1:sus7.9-
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 3
  r2 \stemUp [fs'8 g a b] \stemDown [cs d_\markup\center-align{"♭6"} e fs^\markup\right-align{"F♯ Phyrgian mode, D major"}]
  \bar "||"
}
theBass = {
  <fs, e g b cs'>1 s2
  \bar "||"
}

\include "include/dual.ly"

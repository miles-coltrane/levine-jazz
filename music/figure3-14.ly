\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  af2.:maj7.11+ | gf2.:maj7.11+
}
theTreble = \relative {
  \tuplet 3/2 {d'8 bf'8 <c,~ d~ g~>8} <c d g>4.
  \once \override NoteHead.extra-spacing-width = #'(-3 . 3)
  bf8 |
  \tuplet 3/2 {c8 af'8 <bf,~ c~ f~>8} <bf c f>2 |
  \bar "||"
}
theBass = {
  \tuplet 3/2 {r8 r8 af,8~} af,2 |
  \tuplet 3/2 {r8 r8 gf,8~} gf,2
  \bar "||"
}

\include "include/dual.ly"

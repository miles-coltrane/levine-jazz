\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7 | r1 | r1
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \set fingeringOrientations = #'(right)
  \skip \f % spacer to set voice volume
  <
    d'
    f\finger\markup{\override #'(font-name . "sans")"minor 3rd"}
    a
    c
  >1 |
  <
    d
    f
    a\finger\markup{\override #'(font-name . "sans")"perfect 5th"}
    c
  >1 |
  <
    d
    f
    a
    c\finger\markup{\override #'(font-name . "sans")"minor 7th"}
  >1 |
  \bar "||"
}

\include "include/treble.ly"

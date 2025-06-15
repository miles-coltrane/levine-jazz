\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7 | r1 | r1
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \set fingeringOrientations = #'(right)
  <
    g'
    b\finger\markup{\override #'(font-name . "sans")"major 3rd"}
    d
    f
  >1 |
  <
    g
    b
    d\finger\markup{\override #'(font-name . "sans")"perfect 5th"}
    f
  >1 |
  <
    g
    b
    d
    f\finger\markup{\override #'(font-name . "sans")"minor 7th"}
  >1 |
  \bar "||"
}

\include "include/treble.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7 | r1 | r1
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \set fingeringOrientations = #'(right)
  \skip \f % spacer to set voice volume
  <
    c'
    e\finger\markup{\override #'(font-name . "sans")"major 3rd"}
    g
    b
  >1
  <
    c
    e
    g\finger\markup{\override #'(font-name . "sans")"perfect 5th"}
    b
  >1 |
  <
    c
    e
    g
    b\finger\markup{\override #'(font-name . "sans")"major 7th"}
  >1 |
  \bar "||"
}

\include "include/treble.ly"

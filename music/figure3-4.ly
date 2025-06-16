\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7
}
theTreble = \relative {
  \set fingeringOrientations = #'(right)
  <
    e'\finger\markup{\override #'(font-name . "sans")"9th"}
    g\finger\markup{\override #'(font-name . "sans")"11th"}
    b\finger\markup{\override #'(font-name . "sans")"13th"}
  >1
  \bar "||"
  \bar "||"
}
theBass = \relative {
  \set fingeringOrientations = #'(right)
  <
    d\finger\markup{\override #'(font-name . "sans")"root"}
    f\finger\markup{\override #'(font-name . "sans")"3rd"}
    a\finger\markup{\override #'(font-name . "sans")"5th"}
    c\finger\markup{\override #'(font-name . "sans")"7th"}
  >1
  \bar "||"
}
{
  % BASS CLEF HERE
  \bar "||"
}

\include "include/dual.ly"

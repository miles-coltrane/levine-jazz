\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df2:/c f:maj7 | c1:sus7.9-13-  % TODO: display as "Csus ♭9^♭13"
}
theTreble = {
  <af df' f'>2
  <g c' e'>2
  \bar "||"
  <<
  {
    \set fingeringOrientations = #'(left)
    <
      df'-\finger\markup{\override #'(font-name . "sans")"♭9"}
    >1
  }
  \new Voice {\voiceTwo
    \set fingeringOrientations = #'(right)
    <
      af-\finger\markup{\override #'(font-name . "sans")"♭13"}
      f'-\finger\markup{\override #'(font-name . "sans")"sus4"}
    >1
  }
  >>
  \bar "||"
}
theBass = {
  c2 f,2
  \bar "||"
  \set fingeringOrientations = #'(left)
  <c\root>1
  \bar "||"
}

\include "include/dual.ly"

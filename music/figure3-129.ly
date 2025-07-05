\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.9- |
  e1:7.9- |
  df1:7.9- |
  bf1:7.9- |
}
theTreble = {
  \set fingeringOrientations = #'(right)
  <f af-\finger\markup{\override #'(font-name . "sans")"♭9"} b e'>1 |
  <f-\finger\markup{\override #'(font-name . "sans")"♭9"} af b e'>1 |
  <f af b e'-\finger\markup{\override #'(font-name . "sans")"♯9"}>1 |
  <f af b-\finger\markup{\override #'(font-name . "sans")"♭9"} e'-\finger\markup{\override #'(font-name . "sans")"♯11"} >1
  \bar "||"
}
theBass = {
  g,1 | e,1 | df,1 | bf,,
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | c1:min7 | f:7.11+
}
theTreble = \relative {
  \partial 4 cs'8 <ef~ g~ bf~ d~> |
  <ef g bf d>2 bf'8 g4 ef8 |
  cs'8 <ef,~ gf~ b~>
  \set fingeringOrientations = #'(right)
  <ef gf b\finger\markup{\override #'(font-name . "sans")"♯11"}>2.
  \bar "||"
}
theBass = \relative {
  \partial 4 r8 c8~ | c1  | r8 <f~ a~> <f a>2.
  \bar "||"
}

\include "include/dual.ly"

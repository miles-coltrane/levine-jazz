\version "2.24.4"
\include "include/prologue.ly"

% Blue Bossa, Kenny Dorham
theTempo = 160
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  c1:min6 | r2. c4:7.9- | f1:min6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  <a' c g'>4. <af b f'>8 <g a ef'>8 <f af d>4 <ef~ g~ c~>8|
  <ef g c>2. <df e bf'>4 |
  <c~ d~ af'~>2 <c d af'>8 <b' df g>4 <af~ c~ f~>8 |
  <af c f>1
  \bar "||"
}

theBass = {
  ef'4. d'8 c'8 b4 a8~ | a2. g4 | f2~ f8 e'4 d'8~ | d'1
  \bar "||"
}

\include "include/dual.ly"

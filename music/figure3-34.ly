\version "2.24.4"
\include "include/prologue.ly"

% Naima, John Coltrane, Giant Steps
theTempo = 60
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:sus7 | ef:min7
}
theTreble = \relative {
  <<
    { \stemUp\tieUp c''2.~ \tuplet 3/2 {c8 bf8 ef8} }
    \new Voice { \voiceTwo <df, f af>1 }
  >>
  | <gf, bf df f>1
  \bar "||"
}
theBass = \relative {
  <ef, ef'>1 | <ef ef'>1
  \bar "||"
}

\include "include/dual.ly"

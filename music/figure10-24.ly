\version "2.24.4"
\include "include/prologue.ly"

% African Queen, Horace Silver, The Cape Verdean Blues
theTempo = 100
theKey = ef
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  r2 c''16 bf c bf r16 g8.~ |
  g4.~ g16 c,16 f ef f ef r16 c8.~ |
  c4.~ c16 g bf g bf g bf d8.
  \bar "||"
}

\include "include/treble.ly"

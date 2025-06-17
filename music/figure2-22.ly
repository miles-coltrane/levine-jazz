\version "2.24.4"
\include "include/prologue.ly"

theTempo = 180
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:7~ | d:7 | g:7~ | g:7 | c:7~ | c:7 | f:7~ | f:7 |
}
theTreble = \relative {
  <c'~ e~ b'~>1 |
  <c  e  b'> |
  <b~ e~ a~> |
  <b  e  a> |
  <bf~ d~ a'~> |
  <bf  d  a'> |
  <a~ d~ g~> |
  <a  d  g>
  \bar "||"
}
theBass = \relative {
  \skip \f % spacer to set voice volume
  <d~ fs~>1 |
  <d  fs> |
  <g,~ f'~> |
  <g   f'> |
  <c~ e~> |
  <c  e> |
  <f,~ ef'~> |
  <f  ef'> |
}
theLyrics = \lyricmode {
  "V"1 | "of"1 |
  "V"1 | "of"1 |
  "V"1 | "of"1 |
  "V"1
}

\include "include/dual+lyrics2.ly"

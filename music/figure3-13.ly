\version "2.24.4"
\include "include/prologue.ly"

theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g:7 | c:maj7 f:maj7.11+
}
theTreble = \relative {
  <c' f a>2 <b e a> |
  <<
    {\stemDown <b d e>2 <a b e>2}
    \new Voice { \voiceTwo \stemUp g'4 \tuplet 3/2 {e8 f8 g8} e2}
  >>
  \bar "||"
}
theBass = {
  d2 <g, f> | c f,
  \bar "||"
}

\include "include/dual.ly"

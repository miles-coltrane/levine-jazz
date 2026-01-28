\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:maj7 | c1:min7 | f:7 | g:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp\tieUp
      b'2 \tuplet 3/2 {a'4 b'4 a'4 } |
      ef'1~ |
      ef'2. a'4
    }
    \new Voice {\voiceTwo
      <b e'>1 |
      <g bf>1 |
      <g a>1
    }
  >> |
  <b e' a'>1
  \bar "||"
}
theBass = {
  c,1 | c,1 | f,1 | <g, fs>1
  \bar "||"
}

\include "include/dual.ly"

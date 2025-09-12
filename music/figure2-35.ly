\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf2:maj7 ef:maj7 | d1:min7 |
}
theTreble = \relative {
  <<
    {\tieUp f'2~ f8 bf, d f }
    \new Voice { \voiceTwo <a, d>2 <g c>2  }
  >> |
  <c e g>2
  \bar "||"
}
theBass = \relative {
  bf,2 ef,2 | <d' f a>2
  \bar "||"
}

\include "include/dual.ly"

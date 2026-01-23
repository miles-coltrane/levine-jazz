\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  \tuplet 4/3 { f4/df ef/cf f/df c/af } |
  ef2./a |
  c:maj7/b |
  d:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \tuplet 4/3 {
    <c' f a>4
    <bf ef g>4
    <c f a>4
    <g c e>4
  }
  <bf ef g>2 e8 g8
  <<
    {\stemUp b2~ b8 d8 | b8 bf8 a2}
    \new Voice {\voiceTwo <c, e g>2. <c e fs>2.}
  >>
  \bar "||"
}
theBass = {
  \tuplet 4/3 { df4 cf df af,} |
  a,2. |
  b,2. |
  d,2.
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup{ "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.2
  \partial 4 c'8 c8
  \bar "||"
  ef4 c8 ef8 f4. c8 |
  ef8 c8 ef8 f8~ f4 ef8 c8 |
  ef4 f4 ef8 c8 ef8 f8~ |
  f4 ef8 c8 ef4 f4
  \bar "||"
}
claveName = \markup { "2 & 3 clave" }
theClave = \relative {
  \partial 4 s4 \bar "||"
  r4 c''4^"x" c4^"x"  r4 |
  c4^"x"  r8 c4^"x"  r8 c4^"x"  |
  r4 c4^"x"  c4^"x"  r4 |
  c4^"x"  r8 c4^"x"  r8 c4^"x"  |
  \bar "||"
}

\include "include/clave.ly"

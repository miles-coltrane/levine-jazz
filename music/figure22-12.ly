\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup\left-column{ "Bud's" "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  d''4 r8 d4 r8 d4~ |
  d2 c4 d4 |
  b4 r8 b4 r8 b4~ |
  b4 b,8 cs e fs b cs
  \bar "||"
}
claveName = \markup { "3 & 2 clave" }
theClave = \relative {
  c''4^"x"  r8 c4^"x"  r8 c4^"x"
  r4 c c4^"x"  r4 |
  c4^"x"  r8 c4^"x"  r8 c4^"x"
  r4 c^"x" c4^"x"  r4 |
  \bar "||"
}

\include "include/clave.ly"

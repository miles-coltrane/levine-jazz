\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup\left-column{ "original" "melody"  }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  r8 gf'4. f8 ef8 c8 a8 |
  ef'4 ef4 ef4 r4
  \bar "||"
}
claveName = \markup { "2 & 3 clave" }
theClave = \relative {
  r4 c'' c4^"x"  r4 |
  c4^"x"  r8 c4  r8 c4
  \bar "||"
}

\include "include/clave.ly"

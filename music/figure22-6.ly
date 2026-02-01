\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup{ "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.2
  \partial 4 af'4
  \bar "||"
    g4. f4. bf4~ |
    bf4 g8 ef8 cf8 ef8 g8 bf8 |
    f4. ef4. af4~ |
    af4 f8 df8 a8 df8 f8 af8
  \bar "||"
}
claveName = \markup { "3 & 2 clave" }
theClave = \relative {
  \partial 4 s4 \bar "||"
  c''4^"x" r8 c4^"x" r8 c4^"x" |
  r4 c4^"x" c4^"x" r4 |
  c4^"x" r8 c4^"x" r8 c4^"x" |
  r4 c4^"x" c4^"x" r4
  \bar "||"
}

\include "include/clave.ly"

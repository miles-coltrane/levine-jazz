\version "2.24.4"
\include "include/prologue.ly"

% Ave Maria Morena
theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup{ "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  \partial 2. g'4 c d
  \bar "||"
  e4 r8 d4 r8 c4~ |
  c4 e4 f4 e4 |
  d4 r8 c4 r8 d4~ |
  d1
  \bar "||"
}
claveName = \markup { "3 & 2 clave" }
theClave = \relative {
  \partial 2. s2. \bar "||"
  c''4^"x" r8 c4^"x" r8 c4^"x" |
  r4 c4^"x" c4^"x" r4 |
  c4^"x" r8 c4^"x" r8 c4^"x" |
  r4 c4^"x" c4^"x" r4
  \bar "||"
}

\include "include/clave.ly"

\version "2.24.4"
\include "include/prologue.ly"

% Tune Up, Miles Davis
theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup\left-column{ "melody" "rewritten" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.2
  a'2. g4 |
  ds4. e4. fs4~ |
  fs1~ |
  fs1
  \bar "||"
}
claveName = \markup { "2 & 3 clave" }
theClave = \relative {
  r4 c'' c4  r4 |
  c4^"x"  r8 c4^"x"  r8 c4^"x"  |
  r4 c4  c4  r4 |
  c4  r8 c4  r8 c4 |
  \bar "||"
}

\include "include/clave.ly"

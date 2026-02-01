\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup{ "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.2
  a'2. g4 |
  ds2 e2 |
  fs1~ |
  fs1
  \bar "||"
}
claveName = \markup { "2 & 3 clave" }
theClave = \relative {
  r4 c'' c4  r4 |
  c4^"x"  r8 c4  r8 c4  |
  r4 c4  c4  r4 |
  c4  r8 c4  r8 c4
  \bar "||"
}

altClef = treble
altClaveName = \markup { "3 & 2 clave" }
altClave = \relative {
  c''4^"x"  r8 c4  r8 c4^"x"  |
  r4 c4  c4^"x"  r4 |
  c4^"x"  r8 c4  r8 c4 |
  r4 c c4  r4
  \bar "||"
}

\include "include/clave3.ly"

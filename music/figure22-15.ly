\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup{ "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1.5
  f'1 | fs1 | gs2.~ gs8 c8 | b4. gs8~ gs2
  \bar "||"
}
claveName = \markup { "2 & 3 clave" }
theClave = \relative {
  r4 c''4  c4  r4
  c4^"x"  r8 c4  r8 c4  |
  r4 c4  c4  r4
  c4^"x"  r8 c4^"x"  r8 c4
  \bar "||"
}

altClef = treble
altClaveName = \markup\left-column { "Tony Reedus'" "brushes" "pattern" }
altClave = \relative {
  c''4 c4 c8 c8 r8 c8 |
  c4 c8 c8 r8 c4 c8 |
  c4 c4 c8 c8 r8 c8 |
  c4 c8 c8 r8 c4 c8
  \bar "||"
}

\include "include/clave3.ly"

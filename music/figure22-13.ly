\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup\left-column{ "Bud's" "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  d''4 r8 d4 r8 d4~ |
  d2 c4 d4
  \bar "||"
}
claveName = \markup { "3 & 2 clave" }
theClave = \relative {
  c''4^"x"  r8 c4^"x"  r8 c4^"x"  |
  r4 c4  c4^"x"  r4
  \bar "||"
}

altClef = bass
altClaveName = \markup\left-column { "Max's cowbell" "pattern on" "take #1" }
altClave = \relative {
  f4^"x" f4 f8 f4 f8 |
  r8 f4 f8 f4^"x" f4
  \bar "||"
}

\include "include/clave3.ly"

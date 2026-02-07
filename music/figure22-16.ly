\version "2.24.4"
\include "include/prologue.ly"

% One's Own Room, Mulgrew Miller
theTempo = 180
theKey = c
theSignature = 4/4
theName = \markup{ "melody" }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  a'4. d8~ d4 a4 | gs1
  \bar "||"
}
claveName = \markup { "3 & 2 clave" }
theClave = \relative {
  c''4^"x"  r8 c4^"x"  r8 c4^"x"
  r4 c c4  r4
  \bar "||"
}

\include "include/clave.ly"

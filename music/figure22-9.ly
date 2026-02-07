\version "2.24.4"
\include "include/prologue.ly"

% Bye-Ya, Thelonius Monk, Monk's Dream
theTempo = 140
theKey = c
theSignature = 4/4
theName = \markup{ "melody"  }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  r4 r8 as8 b8 ef8 g8 ef8 |
  f4. f8~ f2
  \bar "||"
}
claveName = \markup { "2 & 3 clave" }
theClave = \relative {
  r4 c'' c4^"x"  r4 |
  c4^"x"  r8 c4^"x"  r8 c4
  \bar "||"
}

\include "include/clave.ly"

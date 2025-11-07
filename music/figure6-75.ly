\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | gf:maj7.11+ | f:maj7 |
  ef:maj7.11+ | d:min7 | ef:maj7.11+ |
  d:min7 | bf:min7 | a:min7 |
  bf:maj7 | e2:min7.5- a2:alt |
  d1:min7 | g:min7  | gf:maj7.11+ |
  f:min7 | gf:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  f'8 g a bf c d e f | gf, af bf c df ef f gf | f, g a bf c d e f | \break
  ef, f g a bf c d ef | d, e f g a b c d | ef, f g a bf c d ef | \break
  d, e f g a b c d | bf, c df ef f g af bf | a, b c d e fs g a | \break
  bf, c d ef f g a bf | e,16 fs g a bf c d e a, bf c df ef f g a | \break
  d,,8 e f g a b c d | g, a bf c d e f g| gf, af bf c df ef f gf | \break
  f, g af bf c d ef f | gf, af bf c df ef f gf
  \bar "||"
}

\include "include/treble.ly"

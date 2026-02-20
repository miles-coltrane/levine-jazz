\version "2.24.4"
\include "include/prologue.ly"

% Beatrice, Sam Rivers
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | gf:maj7.11+ | f:maj7 | ef:maj7.11+ |
  d:min7 | ef:maj7.11+ | d:min7 | bf:min7 |
  a:min7 | bf:maj7 | e2:min7.5- a2:alt| d1:min7 |
  g:min7 | gf:maj7.11+ | f:min7 | gf:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 r8 c''8 f8 g4 f8~ | f4 \tuplet 3/2 { ef8 c8 bf8} af8 f ef c | f4. c8 f8 c f bf | a4 f8 c8~ c2 | \break
  r4 r8 a'8 c8 f4 a8~ | a4 g8 f8 d c a g | a c f,4 f4 \tuplet 3/2 {a8 c f,~} | f4. c'8 ef8 df c bf | \break
  a2 c8 a c f~ | f2 f8 c f a~ | a c bf a~ a4 g8 f8 | r2 c8 f a, c | \break
  f,2~ f8 c' bf f~ | f2 f'8 ef c bf | af f ef c bf af ef f~ | f4. ef8 f8 c'4.
  \bar "||"
}
theBass = {
  f,1 | gf, | f, | ef, | \break
  d,  | ef, | d, | bf,, | \break
  a,, | bf,, | e,2 a,2 | d,1 | \break
  g, | gf, | f,  | gf,
  \bar "||"
}

\include "include/dual.ly"

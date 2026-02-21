\version "2.24.4"
\include "include/prologue.ly"

% Giant Steps, John Coltrane, Giant Steps
theTempo = 280
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:maj7 d:7 | g:maj7 bf:7 | ef1:maj7 |
  a2:min7 d:7 | g:maj7 bf:7 |ef:maj7 fs:7 |
  b1:maj7 | f2:min7 bf:7 | ef1:maj7 |
  a2:min7 d:7 | g1:maj7 | cs2:min7 fs:7 |
  b1:maj7 | f2:min7 bf:7 | ef1:maj7 |
  cs2:min7 fs:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  ds''8 fs cs ds d e fs a | b d a b  bf g f d | c4 d8 bf8~ bf4. b'8 | \break
  a8 d \tuplet 3/2 {b a fs} b a fs e | d e fs a  f g bf c | d c bf g  as gs ds cs  | \break
  as4 fs8 gs8~ gs2 | r8 f16 g16 bf8 c d f g bf | c4 bf8 g8~ g4. c8 | \break
  b8 d a b fs a e fs | d e16 d16 b8 a r8 a8 b4 | r8 ds cs ds fs ds cs as | \break
  gs as fs gs  ds fs gs as | f g bf c d f g bf | c bf g f bf g f d | \break
  ds fs cs ds r8 ds8 fs,4
  \bar "|."
}

\include "include/treble.ly"

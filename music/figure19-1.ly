\version "2.24.4"
\include "include/prologue.ly"

% What's New, Bob Haggart
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:7.9- | c1:maj7  | bf2:min7 ef2:7 | af1:maj7 |
  d2:min7.5- g2:7 c1:min | d2:min7.5- g2:alt | c1:maj7 |
  d2:min7 g2:7.9- | c1:maj7 | bf2:min7 ef2:7 | af1:maj7 |
  d2:min7.5- g2:7 | c1:min |d2:min7.5- g2:alt | c1:maj7 |
  g2:min7 c2:7.9- | f1:maj7 ef2:min7 af2:7 | df1:maj7 |
  g2:min7.5- c2:7 | f1:min | g2:min7.5- c2:alt | f1:maj7 |
  d2:min7.5- g2:7.9- | c1:maj7 | bf2:min7 ef2:7 | af1:maj7 |
  d2:min7.5- g2:7 | c1:min | d2:min7.5- g2:alt | c1:maj7 | r1
}
theTreble = \relative {
  \tupletUp
  \partial 2 b'2
  \bar "||"
  c1 |
  \tuplet 3/2 {c4 bf4 af4} \tuplet 3/2 {g4 f4 e4} |
  ef1 | \break
  r8 d8 ef8 d8 cs4 d4 |
  g1 |
  \tuplet 3/2 {f4 g4 f4} ef4. b8 |
  d8 c8 c8 c8~ c2 | \break
  r2 b'2
  \bar "||"
  c1 |
  \tuplet 3/2 {c4 bf4 af4} \tuplet 3/2 {g4 f4 e4} |
  ef1 | \break
  r8 d8 ef8 d8 cs4 d4 |
  g1 |
  \tuplet 3/2 {f4 g4 f4} ef4. b8 |
  d8 c8 c8 c8~ c2 | \break
  r2 e'2
  \bar "||"
  f1 |
  \tuplet 3/2 {f4 ef4 df4} \tuplet 3/2 {c4 bf4 a4} |
  af1 |\break
  r8 g8 af8 g8 fs4 g4 |
  c1 |
  \tuplet 3/2 {bf4 c4 bf4} af4. e8 |
  g8 f8 f8 f8~ f2| \break
  af8 g8 g8 g8~ g4 b4
  \bar "||"
  c1 |
  \tuplet 3/2 {c4 bf4 af4} \tuplet 3/2 {g4 f4 e4} |
  ef1 |\break
  r8
  d8 ef8 d8 cs4 d4 |
  g1 |
  \tuplet 3/2{f4 g4 f4} ef4. b8 |
  d8 c8 c8 c8~ c2 |
  r1
  \bar "||"
}

\include "include/treble-aligned.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7  ef2:7 | af2:maj7 b2:7  | e2:maj7  g2:7  | c1:maj7 |
  c2:min7  df2:7 | af2:maj7 a2:7  | d2:maj7  f2:7  | bf1:maj7 |
  bf2:min7 b2:7  | e2:maj7  g2:7  | c2:maj7  ef2:7 | af1:maj7 |
  af2:min7 a2:7  | d2:maj7  f2:7  | bf2:maj7 df2:7 | gf1:maj7 |
  fs2:min7 g2:7  | c2:maj7  ef2:7 | af2:maj7 b2:7  | e1:maj7 |
  e2:min7  f2:7  | bf2:maj7 df2:7 | gf2:maj7 a2:7  | d1:maj7 |
  ef2:min7 e2:7  | a2:maj7  c2:7  | f2:maj7  af2:7 | df1:maj7 |
  cs2:min7 d2:7  | g2:maj7  bf2:7 | ef2:maj7 fs2:7 | b1:maj7 |
  b2:min7  c2:7  | f2:maj7  af2:7 | df2:maj7 e2:7  | a1:maj7 |
  a2:min7  bf2:7 | ef2:maj7 fs2:7 | b2:maj7  d2:7  | g1:maj7 |
  g2:min7  af2:7 | df2:maj7 e2:7  | a2:maj7  c2:7  | f1:maj7 |
  f2:min7  fs2:7 | b2:maj7  d2:7  | g2:maj7  bf2:7 | ef1:maj7 |
}
theTreble = \relative {
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s1 | \break
  \bar "||"
}

\include "include/treble-aligned.ly"

\version "2.24.4"
\include "include/prologue.ly"

% All Of You, Miles Davis, My Funny Valentine
theTempo = 150
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 |
  g:min7 | c:7 |
  f:min7 | bf:7 | g:min7 |
  c:7 | f:min7 | bf:7
}
theTreble = \relative {
  \tuplet 3/2 {c'8 ef c}
  \tuplet 3/2 {ef g ef}
  \tuplet 3/2 {c ef c}
  \tuplet 3/2 {ef g ef} |
  \omit TupletNumber
  \tuplet 3/2 {c ef c }
  \tuplet 3/2 {ef g ef}
  \tuplet 3/2 {c ef c}
  \tuplet 3/2 {ef g ef} | \break
  \tuplet 3/2 {cs e cs}
  \tuplet 3/2 {e g e}
  \tuplet 3/2 {cs e cs}
  \tuplet 3/2 {e g e} |
  \tuplet 3/2 {cs e cs}
  \tuplet 3/2 {e g e}
  \tuplet 3/2 {cs e cs}
  \tuplet 3/2 {e g e} | \break
  c8. c16  d8. d16  ef8. ef16  f8. f16 |
  g8. g16  af8. af16  bf8. bf16  c8. c16 |
  df8. df16  ef8. ef16  f8. f16 g8. g16 | \break
  af8. af16 bf8. bf16 c8. c16  cs8 d8~ |
  d4  c8. d16 g,8 g8 r8 df'8~ |
  df4 cf8. df16  gf,8 gf8 r4
  \bar "||"
}

\include "include/treble-aligned.ly"

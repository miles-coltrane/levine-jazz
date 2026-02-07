\version "2.24.4"
\include "include/prologue.ly"

% Oliloqui Valley, Herbie Hancock, Empyrean Isles
theTempo = 180
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df1:7.9-
}
theTreble = \relative {
  \tuplet 3/2 {b'8 d cs}
  \tuplet 3/2 {b d e}
  \tuplet 3/2 {d b d}
  \tuplet 3/2 {f e cs} |
  \tuplet 3/2 {e g f}
  \tuplet 3/2 {d f af}
  \tuplet 3/2 {g e g}
  \tuplet 3/2 {bf af g} | \break
  \tuplet 3/2 {f e d}
  \tuplet 3/2 {cs b bf}
  \tuplet 3/2 {af g f}
  \tuplet 3/2 {e d cs} |
  b4 r4 r2
  \bar "||"
}

\include "include/treble.ly"

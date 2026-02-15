\version "2.24.4"
\include "include/prologue.ly"

% Lament for Booker, Freddie Hubbard, Hub Tones
theTempo = 90
theKey = c
theSignature = 4/4
theChords = \chordmode {
  cs1:min7 | fs2:7 c:7
}
theTreble = \relative {
  b'16 ds16 b8  as16 cs16 as8  gs16 b16 gs8  fs16 as16 fs8 |
  e16 gs e cs ds fs ds b d f d bf c e c a
  \bar "||"
}

\include "include/treble.ly"

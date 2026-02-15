\version "2.24.4"
\include "include/prologue.ly"

% Idle Moments, Grant Green, Idle Moments
theTempo = 75
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:min g2:alt | c1:min
}
theTreble = \relative {
  d''16 b8. f'16 d8. g16 ef8. d16 g,8. |
  fs16 g8. fs16 g8. fs16 g8. fs16 g8. |
  fs16 g8. fs16 g8. fs16 c8. ef16 f8.
  \bar "||"
}

\include "include/treble.ly"

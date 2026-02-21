\version "2.24.4"
\include "include/prologue.ly"

% Rahsaan's Run, Woody Shaw, Rosewood
theTempo = 150
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
   f''8 e ef g f d c f | ef af, bf df b e, a b
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "F bebop dominant - - - - - - -"1 |
  "A♭ - - - - - -"2
  "A - - - - - - - -"2
}

\include "include/treble-lyrics.ly"

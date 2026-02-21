\version "2.24.4"
\include "include/prologue.ly"

% Hub Tones, Freddie Hubbard, Hub Tones
theTempo = 130
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | r | r |
  r | ef:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  f''8 g f d r8 e ef d~ | d4 df8 c b bf a4 | r4 fs8 gs8 e4 d8 e8 | \break
  cs4 c8 d8 e4 f8 g8 | a4 bf8 c8 d4 ef8 d8 | a'4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  ""4 ""4. "chromatic - -"4. |
  " - - - - - - - - - - - - - - - - - -"1 |
  ""4 "AΔ - - - - - - - - - - - -"2. |
  "- -"4 "FΔ - - - - - - - - - - - - - -"2. |
  "- -"4 "B♭Δ - - - - - - - - - - - - -"2. |
  "- -"4
}

\include "include/treble-lyrics.ly"

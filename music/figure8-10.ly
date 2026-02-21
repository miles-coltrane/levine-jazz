\version "2.24.4"
\include "include/prologue.ly"

% In Case You Haven't Heard, Woody Shaw, Little Red's Fantasy
theTempo = 210
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3.5
  r4 r8 c''8 f bf a g |
  gs fs ds cs b f' d e |
  d d a f
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "key of F - - - - - - - - - - - - - - - - -" 1 |
  "B pentatonic - -"2 "key of F - - - - - - -" 2 |
  "- - - - - - - - - -"1 |
}

\include "include/treble-lyrics.ly"

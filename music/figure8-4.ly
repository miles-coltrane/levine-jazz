\version "2.24.4"
\include "include/prologue.ly"

% Wingspan, Mulgrew Miller, Wingspan
theTempo = 125
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | d:7 | af:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  d'''8 b g d  a' fs d b |
  e cs a fs  b gs e b |
  gf' ef cf gf  df' bf gf4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "G major - -"2
  "B-7 - - - -"2 |
  "F♯-7 - - - -"2
  "E major - -" 2|
  "C♭ major - -" 2
  "G♭ major - -" 2|
}

\include "include/treble-lyrics.ly"

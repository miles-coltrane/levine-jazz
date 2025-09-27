\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:min7
}
theTreble = \relative {
  r2 d'''16 bf g e c' a f d |
  bf' g e c a' f d bf g' e c a f' d bf g |
  e' c a f d' bf g e r2
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  ""2 "Eø..."4 "D-7..." |
  "C7..." "B♭Δ..." "A-7..." "G-7..." |
  "FΔ..." "Eø..."
}

\include "include/treble-lyrics.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a1:alt | d:min7.5- |
  g1:alt | c:min7.5- f1:alt
}
theTreble = \relative {
  g'4 bf d e |
  bf df f g |
  f, af c d |\break
  af cf ef f |
  ef, gf bf c|
  fs, a cs ds
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "G melodic minor"1 | "B♭ melodic minor"1 | "F melodic minor"1 |
  "A♭ melodic minor"1 | "E♭ melodic minor"1 | "F♯ melodic minor"1
}

\include "include/treble-lyrics-aligned.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  bf2.:maj7 | d:7.5+ | ef:maj7 | g:7.5+
}
theTreble = \relative {
  \tuplet 3/2 {bf'8 f8 bf} \tuplet 3/2 {d bf d} f4 |
  r8 fs8 \tuplet 3/2 {bf fs bf} d4 |
  r8. d,16 ef8. g16 bf8. d16 |
  ef4 d8. c16  b8. g16
  \bar "||"
}
theLyrics = \lyricmode {
  \override Lyrics.LyricText.self-alignment-X = #LEFT
  "B♭ major ...."2. |
  "F♯ augmented ..."2. |
  "E♭ major ....."2. |
}
\include "include/treble-lyrics.ly"

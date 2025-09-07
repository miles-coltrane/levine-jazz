\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 | g:min7 | c:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1
  af8 f af c bf g bf d | c af c ef d bf d f | \break
  e c e g fs d fs a | gs e gs b a f a cs
  \bar "||"
}
theLyrics = \lyricmode {
  \override Lyrics.LyricText.self-alignment-X = #LEFT
  "F minor"2 "G minor"2 |
  "A♭ major"2 "B♭ major"2 |
  "C major"2 "D major"2 |
  "E major"2 "F augmented"2
}
\include "include/treble-lyrics-aligned.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | g:min1 | a:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  c'8 d e g af bf c ef | df ef f af gf af bf df | d b g4 s4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "inside - - - -"2
  "outside - - - -"2
  "- - - - - - - - - - - - - - - - -"1
  "inside - - -"2
}

\include "include/treble-lyrics.ly"

\version "2.24.4"
\include "include/prologue.ly"

% Wingspan, Mulgrew Miller, Wingspan
theTempo = 125
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | g:min7 | a:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  c'''4 r8 a8 f4. a8 | g4 e8 r8 c4 e8 c8 | d8 b8 g8 e8 a4
  \bar "||"
}
theLyrics = \lyricmode {
  \override Lyrics.LyricText.self-alignment-X = #LEFT
  "F major triad.."1 |
  "C major triad.."1 |
  "G major triad.."1 |
}
\include "include/treble-lyrics.ly"

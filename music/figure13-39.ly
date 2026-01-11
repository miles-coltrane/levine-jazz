\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 | bf1:min7 |ef:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.9
  \partial8 bf'8 |
  r8 f4 bf8 a f df bf |
  af' f fs g
  \bar "||"
}

theLyrics = \lyricmode {
  \small
  \override Lyrics.LyricText.self-alignment-X = #CENTER
  "root"8 |
  ""2
  \markup\center-column{"major" "7th"}8 ""4. |

  \markup\center-column{"minor" "7th" "of" "B♭-7"}8 ""4 \markup\center-column{"3rd" "of" "E♭7"}8
}
\include "include/treble-lyrics.ly"

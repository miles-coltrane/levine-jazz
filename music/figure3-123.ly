\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
  g1:7.9- % TODO: add extra chord names
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  g'4 af bf b cs d e f g^\markup\right-align{\smaller "G half-step/whole step dimished scale"}
  \bar "||"
}
theLyrics = \lyricmode {
 "" "♭9" "♯9"  "" "♯11" "" "" "" ""
}
theName = \markup {""}

\include "include/scale-lyrics.ly"

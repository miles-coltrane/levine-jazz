\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
  g1:7.9-
}theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  \override Timing.TimeSignature.stencil = ##f
  g'4
  % TODO: improve markup of chord name
  af^\markup{(also B♭7{\super ♭9}, C♯7{\super ♭9}, E7{\super ♭9})}
  bf b cs d e f g^\markup\right-align{\smaller "G half-step/whole step diminished scale"}
  \bar "||"
}
theLyrics = \lyricmode {
 "" "♭9" "♯9"  "" "♯11" "" "" "" ""
}
theName = \markup {""}

\include "include/scale-lyrics.ly"

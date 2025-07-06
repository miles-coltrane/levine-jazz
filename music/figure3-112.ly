\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode { }
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 4
  \override Timing.TimeSignature.stencil = ##f
  % TODO: improve markup of chord names
  d'4^\markup{\smaller D-{\super\whiteTriangleMarkup}, Esus{\super ♭9}, F\whiteTriangleMarkup\super{♯5},G7{\super ♯11}, Bø, C♯7alt } |
  e' f' g' a' b' cs'' d''^\markup\right-align{\smaller "D melodic minor scale"}
  \bar "||"
}

\include "include/treble.ly"

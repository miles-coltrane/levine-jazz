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
  g'4^\markup{\smaller G-{\super\whiteTriangleMarkup}, Asus{\super ♭9}, B♭\whiteTriangleMarkup\super{♯5},C7{\super ♯11}, Eø, F♯7alt } |
  a' bf' c'' d'' e'' fs'' g''^\markup\right-align{\smaller "G melodic minor scale"}
  \bar "||"
}

\include "include/treble.ly"

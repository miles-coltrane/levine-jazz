\version "2.24.4"
\include "include/prologue.ly"

% Lynn's Tune, Booker Ervin, Back From The Gig
theTempo = 125
theKey = c
theSignature = 4/4
theChords = \chordmode {
  \set chordChanges = ##f % show chords when they don't change
  af1:maj7 |
  af1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  ef''8 c g f  bf2
  \bar "||"
  r8 c ef c g f bf g | ef c f2.
  \bar "||"
}

\include "include/treble.ly"

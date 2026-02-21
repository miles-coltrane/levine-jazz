\version "2.24.4"
\include "include/prologue.ly"

% Totem Pole, Lee Morgan, The Sidewinder
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode { f1:7 }
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  a'8 f g d f4 c8 d8~ | d1
  \bar "||"
}

\include "include/treble.ly"

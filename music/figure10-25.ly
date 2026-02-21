\version "2.24.4"
\include "include/prologue.ly"

% Gichi, Booker Ervin, Back From The Gig
theTempo = 150
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  e''16 d e d b a g e g a r8 r4
  \bar "||"
}

\include "include/treble.ly"

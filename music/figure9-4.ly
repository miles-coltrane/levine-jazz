\version "2.24.4"
\include "include/prologue.ly"

% So Sorry Please, Bud Powell, The Genius of Bud Powell
theTempo = 180
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:maj7 c:min7 | f:min7 bf:7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  bf'8 c ef g ef c bf g | f g f bf r2
  \bar "||"
}

\include "include/treble.ly"

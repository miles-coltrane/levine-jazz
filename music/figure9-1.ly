\version "2.24.4"
\include "include/prologue.ly"

% In Case You Haven't Heard, Woody Shaw, Little Red's Fantasy
theTempo = 210
theKey = c
theSignature = 4/4
theChords = \chordmode {
  cf1:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  r8 f''4 f8 af4 f8 ef8 | df8 bf af ef bf' ef af, ef | bf' df af ef af bf af g | \break
  ef af ef ef f ef df bf | af bf df af ef' bf r4
  \bar "||"
}

\include "include/treble.ly"

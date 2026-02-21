\version "2.24.4"
\include "include/prologue.ly"

% In Case You Haven't Heard, Woody Shaw, Little Red's Fantasy
theTempo = 210
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4. | cf1:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \partial 4. f''8 ef f |
  bf bf bf4 r4 r8 f8 |
  r2 ef8 f af4 |
  af8 af8 af4 r4 r8 f8 |
  ef8 bf'8 af4 af4 f8 ef8 | \break
  df8 bf af f bf ef df af |
  bf df d^\markup\center-align{"\"out\""} df bf2 |
  af8 bf af f af4 f8 ef8 | \break
  df8 bf af bf8~ bf2
  \bar "||"
}

\include "include/treble.ly"

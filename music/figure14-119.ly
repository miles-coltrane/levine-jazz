\version "2.24.4"
\include "include/prologue.ly"

% It's Easy To Remember, John Coltrane, Ballads
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef4 gf4:maj7 a4:maj7.11+ af4:maj7 |
  gf4:maj7 e4:maj7 df2:6.9
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <f g bf ef'>4 <f af bf ef'>4 <af df' ef'>4 <g c' ef'>4|
  <f af bf ef'>4 <gs cs' ds'>4 <f bf ef'>2
  \bar "||"
}
theBass = {
  <ef, bf,>4 <gf, df>4 <a, e>4 <af, ef>4 |
  <gf, df>4 <e, b,>4 <df, af,>2
  \bar "||"
}

\include "include/dual.ly"

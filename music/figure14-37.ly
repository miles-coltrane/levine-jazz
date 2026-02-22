\version "2.24.4"
\include "include/prologue.ly"

% You Know I Care, Joe Henderson, Inner Urge
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b4:7.11+ bf4:7.5+ a4:7.11+ af:sus4 | g2:min7.5- fs2:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <cs' f'>4 <d' gf'>4 <df' ef'>4 <bf df' f'>4 |
  <f bf df'>2 <e a cs'>2
  \bar "||"
}
theBass = {
  <b, a>4 <bf, af>4 <a, g>4 <af, gf>4 |
  g,2 fs,2
  \bar "||"
}

\include "include/dual.ly"

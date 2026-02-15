\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight, Victor Young
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a:alt | c:min7 | f:7 |
  f:min7 | bf:7.9- |ef:maj7 | af:7.11+
}
theTreble = \relative {
  g'4 a bf c | df ef g g | a bf c bf | a g f ef | \break
  d c bf af | g f e d | c bf a_\markup\center-align{"♯4"} g | af bf c d
  \bar "||"
}

\include "include/treble-aligned.ly"

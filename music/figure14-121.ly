\version "2.24.4"
\include "include/prologue.ly"

% Spring Is Here, Richard Rodgers
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:maj7.3- | r1 | bf2:min7 ef2:7 | a2:min7 d2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp b4 cs'4 ds'4 e'4 }
    \new Voice {\voiceTwo g1}
  >> |
  <ds' fs'>4 <e' g'>4 <fs' a'>4 <g' b'>4 |
  <df' df''>1 |
  <d' d''>
  \bar "||"
}
theBass = {
  <e,~ b,~>1 |
  <e, b,>1 |
  <bf, af>2 <ef g>2 |
  <a, g>2 <d fs>2
  \bar "||"
}

\include "include/dual.ly"

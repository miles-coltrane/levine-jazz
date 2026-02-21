\version "2.24.4"
\include "include/prologue.ly"

% More Than You Know, Mulgrew Miller, From Day To Day
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e2:min7 d4:min7 g4:7 | b4/c c2.:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \set fingeringOrientations = #'(right)
  <<
    {\stemUp g''8 fs''8 e''8 d''8 e''4. d''8 }
    \new Voice {\stemDown g'2 <f' a'>4 g'4 }
  >> |
  <ds' fs' b'>4 <d' g' b'>2.
  \bar "||"
}
theBass = {
  <e d'>2
  <<
    {\stemUp c'4 b4 | b4 a2.}
    \new Voice {\voiceTwo d2 | c1}
  >>
  \bar "||"
}

\include "include/dual.ly"

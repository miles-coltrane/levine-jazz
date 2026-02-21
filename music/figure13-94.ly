\version "2.24.4"
\include "include/prologue.ly"

% More Than You Know, Vincent Youman
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e2:min7 d4:min7 g4:7 | c1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \set fingeringOrientations = #'(right)
  <<
    {\stemUp g''8 fs''8 e''8 d''8 e''4. d''8 | <b'\seventh>4 b'2.}
    \new Voice {\stemDown g'2 <f' a'>4 g'4 | <d' e' g'>1 }
  >>
  \bar "||"
}
theBass = {
  <e d'>2
  <<
    {\stemUp c'4 b4 }
    \new Voice {\voiceTwo d2}
  >> |
  c1
  \bar "||"
}

\include "include/dual.ly"

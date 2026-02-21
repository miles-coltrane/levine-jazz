\version "2.24.4"
\include "include/prologue.ly"

% On The Sunny Side Of The Street, Jimmy McHugh
theTempo = 180
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g2:7 | c1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    { \stemUp c''4 a'4 f'8 e'8 d'8}
    \new Voice { \voiceTwo <c' f'>2 <a b>4.}
  >>
  <e~ g~ c'~>8 | <e g c'>1
  \bar "||"
}
theBass = {
  d,2 <g, f>4. <c,~ g,~>8 | <c, g,>1
  \bar "||"
}

\include "include/dual.ly"

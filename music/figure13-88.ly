\version "2.24.4"
\include "include/prologue.ly"

% My Foolish Heart, Victor Young
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:min7 f4:sus f4:7 | b1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {c''4 d''4 bf'4 c''4}
    \new Voice {\voiceTwo ef'2 <ef' g'>2}
  >> |
  <c' f' bf'>1
  \bar "||"
}
theBass = {
  <c bf>2
  <<
    {\stemUp bf4 a4}
    \new Voice {\voiceTwo f2}
  >> |
  <bf, d g>1
  \bar "||"
}

\include "include/dual.ly"

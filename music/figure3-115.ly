\version "2.24.4"
\include "include/prologue.ly"

% What's New, Bob Haggart
theTempo = 90
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7.5- c:alt | f1:maj7
}
theTreble =  {
  <<
    { \stemUp \tuplet 3/2 {bf'4 c''4 bf'}}
    \new Voice { \voiceTwo  <df' f>2}
  >> <ef' af'>4. e'8 |
  <<
    {g'8 f' f' f'~ f'2}
    \new Voice { \voiceTwo <a c'>1 }
  >>
  \bar "||"
}
theBass = {
  <g, f>2 <c e bf>2 | <f, e>1
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:min7 f4:sus f4:7.9- | bf1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {c''4 d''4}
    \new Voice {\voiceTwo <e' af'>2}
  >> <bf ef' g' bf'>4 <d' fs' c''>4 |
  <cs' fs' as'>1
  \bar "||"
}
theBass = {
  gf,2 f,4 <f, ef>4|
  <b, ds gs>1
  \bar "||"
}

\include "include/dual.ly"

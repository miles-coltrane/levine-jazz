\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef4:7 d:7 df:7 c:7 | ef:7.11+ d:alt df:7.11+ c:7.9-.11+ |
  ef:7.9-.11+ d:7.9-.11+ df:7.9-.11+ c:1.9-11+ | ef:7.9-.9+.11+ e:7.9-.9+.11+ df:7.9-.9-.11+ c:7.9- |
  ef:sus4 d:sus4 df:sus c:7.9-.11+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  <df' f' bf'>4 <c' e' a'> <cf' ef' af'> <bf d' g'>
  \bar "||"
  <df' f' a'> <c' f' bf'> <cf' ef' g'> <bf cs' fs' a'>
  \bar "||" \break
  <e' a' c''> <ef' af' cf''> <d' g' bf'> <cs' fs' a'>
  \bar "||"
  <fs' a' c'' ef''> <f' gs' b' d''> <e'! g' bf' df''> <e' a' cs''>8 <ef' af'>8
  \bar "||" \break
  <df' f' af' c''>4 <c' e' g' b'> <cf' ef' gf' bf'> <cs' fs' a'>
  \bar "||"

}
theBass = {
  <ef g>4 <d fs> <df f> <c e>
  \bar "||"
  <ef g> <d fs> <df f> <c e>
  \bar "||" \break
  <ef g df'> <d fs c'> <df f cf'> <c e bf>
  \bar "||"
  <<
   { \stemUp <g bf cs' e'>4 <fs a c' ef'>4 <fs gs b d'>4 <c bf>4  }
   \new Voice {\voiceTwo r8 ef,8 r8 d,8 r8 df,8 r8 e8}
  >>
  \bar "||" \break
  \stemDown
  <ef af>4 <d g>4 <df gf>4 <c ef bf>4
  \bar "||"
}

\include "include/dual.ly"

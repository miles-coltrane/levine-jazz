\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight, Victor Young
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | af:7.11+ | r | bf:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {
      \stemUp  r4 ef''4 \tuplet 3/2 {d''c'' bf'} |
      \tieUp
      <bf'~ d''~>1 |
      <bf' d''>4 c''4 bf'4 a'4
    }
    \new Voice { \voiceTwo
      ef'1 |
      \tieDown
      <c'~ f'~>1 |
      <c' f'>
    }
  >> |
   <d' g' c''>1
  \bar "||"
}
theBass = {
  <c bf>1 | <af,~ gf~>1 | <af, gf>1 | <bf, a>1
  \bar "||"
}

\include "include/dual.ly"

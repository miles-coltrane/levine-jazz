\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c\breve:min7 | af1:7.11+
}
theTreble = {
  <<
    {
      \stemUp
      f''1~ | f''4 ef'' \tuplet 3/2 {d''4 c''4 bf'4} | d''4 d''2.
    }
    \new Voice { \voiceTwo
      <ef'~ bf'~>1 | <ef' bf'>1 | <c' f' bf'>1
    }
  >>
  \bar "||"
}
theBass = {
  <c~ g~ d'~>1 |
  <c g d'>1 |
  <af, gf>1
  \bar "||"
}

\include "include/dual.ly"

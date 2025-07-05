\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:alt | df1:maj7 | c:alt
}
theTreble = {
  \partial 2
  <<
    {
      \stemUp cf''4  df''8 <bf~ ef'~ af'~>8
    }
    \new Voice { \voiceTwo
      <c' e'>4. s8
    }
  >> |
  <bf ef' af'>2. cf''8 <bf~ ef'~ af'~>8 |
  <bf ef' af'>1
  \bar "||"
}
theBass = {
  \partial 2
  <af, gf>4. <df~ f~>8 |
  <df f>2. r8 <c~ e~>|
  <c e>1
  \bar "||"
}

\include "include/dual.ly"

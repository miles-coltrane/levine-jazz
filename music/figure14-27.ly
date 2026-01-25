\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gf1:maj7 | af:7 | f2:7 f2:7.13- | bf2:min7 af4:min7 df:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 1.8
  <<
    { \stemUp
      bf'4 bf'2  a'8 bf'8 |
      c''4 bf'4 af'4 gf'4 |
      f'8 f'4 gf'8 f'4 ef'4
    }
    \new Voice { \voiceTwo
      <df' f'>1 |
      <c' f'>1
      <a d'>2 <a df'>2
    }
  >> |
  <af df'>2 <gf cf'>4 <f cf'>4
  \bar "||"
}
theBass = {
  gf,1 |
  <af, gf>1 |
  <f, ef>2 <f, ef>2 |
  bf,2 af,4 df,4
  \bar "||"
}

\include "include/dual.ly"

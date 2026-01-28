\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 e2:min7 | d2/fs g2:min6 | d2/fs e4:min7 a4:7 | d1
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp
      r8 d'8 e'8 fs'8 a'8 a'4 a'8 |
      d''8 d''4 fs'8 a'8 a'4 g'8 |
      fs'8 fs'4 d'8
    }
    \new Voice {\voiceTwo
      fs2  <g d'>2 |
      <d' a'>2 <bf d'>2 |
      <a d'>2
    }
  >> <g b d' e'>4 <g b cs'>4 |
  <fs a>1
  \bar "||"
}
theBass = {
  <d, a,>2 <e, b,>2 |
  <fs, d>2 <g ,e>2 |
  <fs, d>2 e,4 a,4 |
  <d, a,>1
  \bar "||"
}

\include "include/dual.ly"

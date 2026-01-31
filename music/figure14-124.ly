\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  cf4/c df/d ef/e gf/g|
  af/a cf/c af/a e:7.11+ |
  ef1:sus4 |
  ef1:7.9-.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <gf cf ef>4 <af df f> <bf ef g> <df gf bf> |
  <ef af c> <gf cf ef> <ef af c> <d gf bf> |
  <df f c'>1 |
  <e a c ef>1
  \bar "||"
}
theBass = {
  c4 d e g |
  a c' a <e gs> |
  <ef af>1
  <<
    {
      <g df'>1
    }
    \new Voice {\voiceTwo
      r2 ef,2
    }
  >>
  \bar "||"
}

\include "include/dual.ly"

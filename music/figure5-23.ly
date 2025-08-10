\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r1 | r2 b2:/c |
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  r4 fs'8 g a b c cs |
  <<
    {\stemUp \tieUp ds8 b4.~ b2~ | b4}
    \new Voice {\voiceTwo
      r2 <b, ds fs>4 r8 <b~ ds~ fs~>8 | <b ds fs>4
    }
  >>
  \bar "||"
}
theBass = {
  r4 fs8 g a b c' cs' |
  ds' b4. <c fs>4 r8 <c~ fs~>8 | <c fs>4
  \bar "||"
}

\include "include/dual.ly"

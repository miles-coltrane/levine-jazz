\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gf1:maj7 | af2:7 a4:maj7 a4:dim | bf2:min7 ef2:7 | a4:sus4 a4:7 af2:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  <<
    {\stemUp
      bf'4 bf'2 a'8 bf'8 |
      c''4 bf'4 <cs' gs'>4 <c' fs'>4 |
      \tuplet 3/2 {f'4 f'4. f'16 gf'16} f'4~ f'16 ef'16 d'16 ef'16
    }
    \new Voice {\voiceTwo
      <df' f'>1 |
      <c' f'>2 s4 s4 |
      <af df'>2 <g c'>2
    }
  >> |
  fs'16 e'16 b16 d'16 cs'8 as16 cs'16 <a c'>2
  \bar "||"
}
theBass = {
  gf,1 |
  <af, gf>2 <a, e>4  <a, ef>4 |
  bf,2 <ef, df>2 | \break
  <a, g>2 <af, gf>2
  \bar "||"
}

\include "include/dual.ly"

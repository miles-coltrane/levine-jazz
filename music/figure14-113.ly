\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | c1:min7 | r1 | a1:min7.5- | d1:7.9+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  \set fingeringOrientations = #'(right)
  \partial 4 d''8 bf'8 |
  <<
    {\stemUp\tieUp
      c''1~ |
      c''4 bf'8 g'8 \tuplet 3/2 {bf'4 g'4 bf'4}
    }
    \new Voice {\voiceTwo
      ef'1~ |
      ef'1
    }
  >> |
  <c' ef' a'>1 |
  <c' f' a'>1
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  <c~ bf~>1 |
  <c bf>1 |
  <a, g>1 |
  <d fs>1
  \bar "||"
}

\include "include/dual.ly"

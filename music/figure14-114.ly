\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 6/8
theChords = \chordmode {
  r8 | bf4.:min7 ef:7 | c:7 ef:7 | e:min7 a:7 | a:min7 d:alt
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  \set fingeringOrientations = #'(right)
  \partial 8 d''16 bf'16 |
  <<
    {\stemUp\tieUp
      c''2. |
      r8 r8 bf'16 g'16 bf'8 g'8 bf'8 |
      a'2.
    }
    \new Voice {\voiceTwo
      <df' f'>4. <g c' ef'>4. |
      <bf d' e'>4. <df' f'>4. |
      <g d'>4. <g cs'>4.
    }
  >> |
  <c' e' a'>4. <c' f' bf'>4.
  \bar "||"
}
theBass = {
  \partial 8 r8 |
  <bf, af>4. <ef, df> |
  c <ef g> |
  e, a, |
  <a, g> <d fs>
  \bar "||"
}

\include "include/dual.ly"

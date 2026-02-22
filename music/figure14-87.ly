\version "2.24.4"
\include "include/prologue.ly"

% All The Way, Jimmy Van Heusen
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gf1:maj7 | af2.:7 a4:dim | bf2.:min7 ef4:7 | ef2:dim af2:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 1.6
  <<
    {\stemUp
      bf'4 bf'2 a'8 bf'8 |
      c''4 bf'4 af'4 <c' gf'>4 |
      f'8 ef'8 \tuplet 3/2 {df'8 c'8 df'8~} df'4 ef'8 f'8 |
      gf'1
    }
    \new Voice {\voiceTwo
      <df' f'>1 |
      <c' f'>2. s4 |
      df'4 s4 s4 <g c'>4 |
      <a df'>2 <a c'>2
    }
  >>
  \bar "||"
}
theBass = {
  gf,1 |
  <af, gf>2. <a, gf>4 |
  <bf, af>2. <ef, df>4 |
  ef,2 <af, gf>2
  \bar "||"
}

\include "include/dual.ly"

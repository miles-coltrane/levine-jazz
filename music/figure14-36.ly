\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2/a bf2/af | c2/g fs4:min7.5- f4:min | e4:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.4
  <<
    {\stemUp
      f'4 f'4 f'4. g'8 |
      e'4 e'4 e'4. f'8
    }
    \new Voice { \voiceTwo
      c'2 <bf d'>2 |
      <g c'>2 <a c'>4 <af c'>4
    }
  >> |
  <g d' g'>4
  \bar "||"
}
theBass = {
  <a, f>2 <af, f>2 |
  <g, e>2 fs,4 f,4 |
  e,4
  \bar "||"
}

\include "include/dual.ly"

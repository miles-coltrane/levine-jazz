\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df1:maj7 | d2:min7 g2:7 | c1:maj7.5+ | c1:6
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \set fingeringOrientations = #'(right)
  <<
    {\stemUp
      f'4 f'4 f'4 f'4 | f'4 b'2 f'4
    }
    \new Voice {\voiceTwo
      c'1 | c'2 b2
    }
  >> |
  \tieUp
  <gs\sharpfive b~ e'~>1 |
  <a\sixth b e'\third>1 |
  \bar "||"
}
theBass = {
  df,1 | d,2 g,2 | c,1~ | c,1
  \bar "||"
}

\include "include/dual.ly"

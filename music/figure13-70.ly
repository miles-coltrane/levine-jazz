\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  df2:maj7 b2:7.11+ | df2:maj7 b2:7.11+ | df4:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {
      \stemUp
      \tieUp
      f'8 f'8~ f'4~ f'8 f'8 ef'8 ef'8 |
      f'8 f'8~ f'4~ f'8 f'8 ef'8 ef'8
    }
    \new Voice { \voiceTwo
      c'2 cs'2 | c'2 cs'2 |
    }
  >> |
  <c' f'>4
  \bar "||"
}
theBass = {
  <df f>2 <b, ds a>2 |
  <df f>2 <b, ds a>2 |
  <df f>4
  \bar "||"
}

\include "include/dual.ly"

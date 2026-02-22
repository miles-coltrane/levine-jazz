\version "2.24.4"
\include "include/prologue.ly"

% Witchcraft, Kenny Barron, Maybeck Recital Hall Series
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:maj7 | r1 | g1:sus4
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4 c'4 |
  <<
    {\stemUp
      c''4. g'8~ g'2~ |
      g'2. c'4 |
      c''4. g'8~ g'2
    }
    \new Voice {\voiceTwo \tieDown
      <c'~ e'~ a'>1 |
      <c' e'>1 |
      <d' f'>1
    }
  >>
  \bar "||"
}
theBass = {
  \partial 4 r4 |
  f,1 |
  f,1 |
  <c bf>1
  \bar "||"
}

\include "include/dual.ly"

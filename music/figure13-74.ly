\version "2.24.4"
\include "include/prologue.ly"

% I Thought About You, Jimmy Van Heusen
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:min7.5- r2 | r1 | g1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  r8 f'8 a'8 c''8
  <<
    { e''8 ef''8 d''8 }
    \new Voice {\voiceTwo <g' c''>4. }
  >>
  <c'~ f'~ a'~>8 |
  <c' f' a'>2

  <<
    { bf'4. a'8 }
    \new Voice {\voiceTwo <d' f'>2 }
  >> |
  <e' a'>1
  \bar "||"
}
theBass = {
  <b, f a>2  <af d'>4. <g~ df'~>8 |
  <g df'>2 <gf c'>2 |
  <f b>1
  \bar "||"
}

\include "include/dual.ly"

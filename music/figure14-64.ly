\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf2:maj7  af2:7.11+ | g1:sus4
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp d''4 d''8 d''8 d''8 d''8 c''8 bf'8}
    \new Voice {\voiceTwo <f' a'>2 <c' f' bf'>2}
  >> |
  <f a c' d'>1
  \bar "||"
}
theBass = {
  <bf, a>2 <af, gf>2 |  g,1
  \bar "||"
}

\include "include/dual.ly"

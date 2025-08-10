\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2 | d2:/c bf:/c | f:maj7/c c:7 | fs:min7 b:7
}
theTreble = \relative {
  \partial 2
  a'4 c
  \bar "||"
  <fs, a d>2 \tieUp <f bf d~>|
  <<
    {\stemUp d'4 c8 f8 e8. d16 c8 bf16 c16}
    \new Voice {\voiceTwo <e, f a>2 <e a>2}
  >> |
  <a, e' a>2 <a ds a'>2
  \bar "||"
}
theBass = {
  \partial 2 r2
  \bar "||"
  <c c'>2 <c c'>2 |
  <c c'>2  <c bf>2 |
  fs,2 b,2
  \bar "||"
}

\include "include/dual.ly"

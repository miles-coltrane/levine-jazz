\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:maj7.3- | r1 | g:min7 | c:7.9-
}
theTreble = \relative {
  <e' g>1 |
  <e g>4 r4 d8 e f g |
  <<
    {a2 a4. g8}
    \new Voice {\voiceTwo <bf, d>1}
  >> |
  <<
    {\stemUp a'4 c8 a8}
    \new Voice { \voiceTwo <cs, e>4 <cs e>8}
  >>
  r2
  \bar "||"
}
theBass = {
  <f af c'>1 |
  <f af c'>4 r4 r2 |
  <g, f>1 |
  <c bf>4. <c bf>8 r2
  \bar "||"
}

\include "include/dual.ly"

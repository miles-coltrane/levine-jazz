\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 c4:sus7
  a4:/c | f1:maj7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 4
  <<
   {bf'4 g4}
   \new Voice { \voiceTwo <bf, f'>2 }
  >>
  % TODO: improve markup of chord name
  <bf d f>4^\markup{(B♭/C)}
  <a cs e>4 |
  <c e a>1
  \bar "||"
}
theBass = {
  g,2 c2 | f,1
  \bar "||"
}

\include "include/dual.ly"

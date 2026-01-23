\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min | d1:min | b1:min7.5- | e1:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  d'4 e f g | gs a b c| <f, f'>2. b4 | e1
  \bar "||"
}
theBass = {
  <d~ f~ a~>1 | <d f a> | <b, a>1 | <e gs d'>1
  \bar "||"
}

\include "include/dual.ly"

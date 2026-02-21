\version "2.24.4"
\include "include/prologue.ly"

% Wave, Antonio Carlos Jobim
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4. |
  d1:maj7 | bf:dim | a:min7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \partial 4. b'8 d cs \bar "||"
  <b,~ e~ a~>2. <b e a>8 fs'8 |
  <<
    {\stemUp g8 bf8 cs8 e8 g4}
    \new Voice { \voiceTwo df,2.}
  >> fs'8 <c~ e~ a~>8 |
  <c e a>1
  \bar "||"
}
theBass = {
  \partial 4. r8 r4 \bar "||"
  <d fs>1 |
  <bf,~ g~>2. <bf, g>8 <a,~ g~> |
  <a, g>1
  \bar "||"
}

\include "include/dual.ly"

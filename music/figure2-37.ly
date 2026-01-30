\version "2.24.4"
\include "include/prologue.ly"

theTempo = 110
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf2:maj7 ef:7 | a1:7
}
theTreble = \relative {
  <<
   { \stemUp c''8 c c c~ c bf g }
   \new Voice { \voiceTwo <d f>4. <df~ f~>8 <df f>4. }
  >> <cs~ fs~ a~>8 |
  <cs fs a>1
  \bar "||"
}
theBass = \relative {
  \skip \f % spacer to set voice volume
  % BASS CLEF HERE
  <bf, af'>4. <ef~ g~>8 <ef g>4. <a,~ g'~>8 | <a g'>1
  \bar "||"
}

\include "include/dual.ly"

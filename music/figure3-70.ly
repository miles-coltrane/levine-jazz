\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r1 | bf:maj7.3-: af:maj7.3-
}
theTreble = \relative {
  r4 bf8 c df ef \tuplet 3/2 {f af bf } |
  <df, f a>2. bf'8 <cf,~ ef~ g~>8 | <cf ef g>1
  \bar "||"
}
theBass = {
  r1 | <bf,~ a~>2. <bf, a>8 <af,~ g~>8 | <af, g> 1
  \bar "||"
}

\include "include/dual.ly"

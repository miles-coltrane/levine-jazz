\version "2.24.4"
\include "include/prologue.ly"

theTempo = 60
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef2:min7 af:7| b4:min7 e:7 bf:min7 ef:7 |
}
theTreble = \relative {
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(right)
  <df'\seventh gf>4
  ef16 gf bf  ef\seventh
  <
    c,\third f c'\third
  >4. fs8 |
  <d a'\seventh>4
  <d gs\third>
  <df af'\seventh>
  <df g\third>
  \bar "||"
}
theBass = \relative {
  ef,2 <af gf'> |
  b4 e bf ef
  \bar "||"
}

\include "include/dual.ly"

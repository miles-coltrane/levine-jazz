\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af2:sus7 af:7.9- | af1:maj7.5+
}
theTreble = \relative {
  <gf bf ef>4. <a~ c~ f~>8
  \tuplet 3/2 { <a c f>8 ef'8 df8 }
  \tuplet 3/2 {c8 bf8 <e,~ g~ c~>8 } |
  % TODO: improve markup of chord name
  <e g c>1^\markup{ (C/A♭) }
  \bar "||"
}
theBass = {
  af,4. <af,~ gf~>8 <af,~ gf~>4
  \tuplet 3/2 { <af, gf>4 af,8~ } |
  af,1
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:sus7 c:7.9- |
  c:maj7.5+ % TODO: add "(E/C)" above
}
theTreble = \relative {
  <bf d g>4. <cs~ e~ a~>8
  \tuplet 3/2 {<cs e a>8 g'8 f8}
  \tuplet 3/2 {e8 d8 <gs,~ b~ e~>8} |
  <gs b e>1
  \bar "||"
}
theBass = {
  <c f>4. <c~ bf~>8 <c~ bf~>4 \tupletDown \tuplet 3/2 {<c bf>4 c8~} |
  c1
  \bar "||"
}

\include "include/dual.ly"

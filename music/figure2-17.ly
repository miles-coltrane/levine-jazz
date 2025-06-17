\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g:7 | c1:maj7
}
theTreble = \relative {
  \override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(left)
  \set glissandoMap = #'((1 . 1))
  <f' c'-\seventh>2\glissando
  \set fingeringOrientations = #'(up left)
  \set glissandoMap = #'((0 . 0))
  <f\seventh b\third >2\glissando |
  \set fingeringOrientations = #'(right)
  <e\third b'>1
  \bar "||"
}
theBass = \relative {
  d,2 g2 | c,1
  \bar "||"
}
theLyrics = \lyricmode {
  II V I
}

\include "include/dual+lyrics.ly"

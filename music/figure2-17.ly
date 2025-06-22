\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g:7 | c1:maj7
}
theTreble = {
  \override Fingering.staff-padding = #'()
  <<
    {
      \stemUp
      \set fingeringOrientations = #'(left)
      <c''\seventh>2\glissando
      \set fingeringOrientations = #'(right)
      <b'\third>2\glissando |
      b'1
    }
    \new Voice { \voiceTwo
      \stemUp
      \set fingeringOrientations = #'(left)
      f'2 <f'\seventh>2\glissando |
      \set fingeringOrientations = #'(right)
      <e'\third>1\glissando
    }
  >> \bar "||"
}
theBass = \relative {
  d,2 g2 | c,1
  \bar "||"
}
theLyrics = \lyricmode {
  II V I
}

\include "include/dual+lyrics.ly"

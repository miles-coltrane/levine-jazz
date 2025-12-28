\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  s1 | g1:7.9-
}
theTreble = {
  <b d' f' af'>1 ^ \markup{"dim"}
  \bar "||"

  % TODO: fix vertical alignment of chord in 2 voices
  <<
    {
      \set fingeringOrientations = #'(right)
      <d'\fifth af'\finger\markup{\override #'(font-name . "sans")"♭9"}>1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(left)
      <b\third f'\seventh>1
    }
  >>

  \bar "||"
}
theBass = {
  s1
  \bar "||"
  % TODO: fix "root" to be to left of note
  {
    \set fingeringOrientations = #'(left)
    g1\root
  }
  \bar "||"
}

\include "include/dual.ly"

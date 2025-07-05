\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gs1:dim | e:7.9-
}
theTreble =  {
  <gs' b' d'' f''>1
  \bar "||"
  <<
    {

      \set fingeringOrientations = #'(left)
      <e'\root b'\fifth f''-\finger\markup{\override #'(font-name . "sans")"♭9"} >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(right)
      <gs'\third d''\seventh>1
    }
  >>
  \bar "||"
}

\include "include/treble.ly"

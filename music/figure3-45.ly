\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:sus7.9-
}
theTreble = \relative {
  <<
    {
      \set fingeringOrientations = #'(right)
      <
        f'\finger\markup{\override #'(font-name . "sans")"♭9"}
        b\fifth
      >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(left)
      <
        e\root
        a\fourth
        d\seventh
      >1
    }
  >>
  \bar "||"
}

\include "include/treble.ly"

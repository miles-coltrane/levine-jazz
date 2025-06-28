\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:sus7.9-
}
theTreble = \relative {
  \override Fingering.staff-padding = #'()
  % TODO: fix vertical alignment of chord in 2 voices
  <<
    {
      \set fingeringOrientations = #'(right)
      <
        ef'-\finger\markup{\override #'(font-name . "sans")"♭9"}
        b'-\finger\markup{\override #'(font-name . "sans")"6th"}
      >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(left)
      <
        d-\root
        g-\finger\markup{\override #'(font-name . "sans")"6th"}
      >1
    }
  >>
  \bar "||"
}

\include "include/treble.ly"

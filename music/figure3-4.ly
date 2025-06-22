\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7
}
theTreble = \relative {
  <<
    {
      \set fingeringOrientations = #'(right)
      <
        g'\finger\markup{\override #'(font-name . "sans")"11th"}
      >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(left)
      <
        e\finger\markup{\override #'(font-name . "sans")"9th"}
        b'\finger\markup{\override #'(font-name . "sans")"13th"}
      >1
    }
  >>
  \bar "||"
}
theBass = {
  <<
    {
      \set fingeringOrientations = #'(right)
      <
        f\finger\markup{\override #'(font-name . "sans")"3rd"}
        c'\finger\markup{\override #'(font-name . "sans")"7th"}
      >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(left)
      <
        d\finger\markup{\override #'(font-name . "sans")"root"}
        a\finger\markup{\override #'(font-name . "sans")"5th"}
      >1
    }
  >>
  \bar "||"
}

\include "include/dual.ly"

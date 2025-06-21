\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  r4 | c2.:maj7 | f:maj7.11+
}
theTreble = \relative {
  \partial 4 g'8. g16| g'4 e c |
  <<
    {
      \set fingeringOrientations = #'(right) % TODO: figure why not set to R
      b4-\finger\markup{\override #'(font-name . "sans")"♯4"}
      a2
    }
    \new Voice { \voiceTwo e2. }
  >>
  \bar "||"
}
theBass = {
  \partial 4 r4 | c,2. | f,2.
  \bar "||"
}

\include "include/dual.ly"

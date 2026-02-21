\version "2.24.4"
\include "include/prologue.ly"

% All The Things You Are, Jerome Kern
theTempo = 150
theKey = af
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | b:7.5+ bf:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {
      ef'4 ef' ef' ef' |
      \set fingeringOrientations = #'(right)
      <g'\finger\markup{\override #'(font-name . "sans")"#5"} >2. f'4
    }
    \new Voice { \voiceTwo bf1 | <a ef'>1 }
  >> |
  <af df'>1
  \bar "||"
}
theBass = {
  c1 | b,1 | bf,1
  \bar "||"
}

\include "include/dual.ly"

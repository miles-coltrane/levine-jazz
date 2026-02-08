\version "2.24.4"
\include "include/prologue.ly"

% Dolphin Dance, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e:7.9-
}
theTreble =  {
  <<
    {
      \set fingeringOrientations = #'(left)
      % TODO: bf needs to move left to not clash here
      <bf'-\finger\markup{\override #'(font-name . "sans")"♯11"} e''\root>1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(right)
      <g'-\finger\markup{\override #'(font-name . "sans")"♯9"} cs''\thirteenth>1
    }
  >>
  \bar "||"
}
theBass = {
  <<
    {
      \set fingeringOrientations = #'(left)
      <b\fifth f'-\finger\markup{\override #'(font-name . "sans")"♭9"} >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(right)
      <gs\third d'\seventh>1
    }
  >>
  \bar "||"
}

\include "include/dual.ly"

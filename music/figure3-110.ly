\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:alt | gf:7.11+
}
theBass = {
  \override Timing.TimeSignature.stencil = ##f
  \override SpacingSpanner.spacing-increment = 3
  <<
    {
      % TODO: fix vertical alignment of chord in 2 voices
      \set fingeringOrientations = #'(right)
      <c,\root e\third c'\root>1
      <gf,\root e\seventh c'-\finger\markup{\override #'(font-name . "sans")"♯11"} >1
    }
    \new Voice { \voiceTwo
      \set fingeringOrientations = #'(left)
      <
        af-\finger\markup{\override #'(font-name . "sans")"♭13"}
        ef'-\finger\markup{\override #'(font-name . "sans")"♯9"}
      >1
      <
        af-\ninth
        ef'-\thirteenth
      >1
    }
  >>
  <>1 |
  <> 1
  \bar "||"
}

\include "include/bass.ly"

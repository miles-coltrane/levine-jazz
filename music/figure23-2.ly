\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.11+ | cs1:alt
}
theBass = {
  \override Score.SpacingSpanner.spacing-increment = 4
  % TODO: fix overlaps
  <<
    {
      \set fingeringOrientations = #'(right)
      <a\ninth e'\thirteenth>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <f\seventh cs'\sharpeleven>1
    }
  >> |

  <<
    {
      \set fingeringOrientations = #'(right)
      <a\flatthirteen e'\sharpnine>1
    }
    \new Voice {\voiceTwo
      \set fingeringOrientations = #'(left)
      <f\third cs'\root>1
    }
  >>
  \bar "||"
}

\include "include/bass.ly"

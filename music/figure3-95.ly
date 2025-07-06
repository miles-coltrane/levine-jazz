\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  ef1:7/f
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  % TODO: improve markup of chord name
  <df' f g c>1^\markup {(B♭ - \super \whiteTriangleMarkup/F)}
  f8 g a bf c df ef f^\markup\right-align{"5th mode, B♭ melodic minor"}
  \bar "||"
}
theBass = {
  <f, f>1 s1
  \bar "||"
}

\include "include/dual.ly"

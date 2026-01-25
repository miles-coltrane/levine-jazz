\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af1:dim | bf1:dim
}
theTreble = {
  \override Timing.TimeSignature.stencil = ##f
  <af' b' d'' f''>1  |
  <bf' cs'' e'' g''>1 |
  \time 9/1
  % TODO: add above/below alternate note markers
  af'1 bf'1 b'1 cs''1 d''1 e''1 f''1 g''1 af''1^\markup\right-align{"A♭ whole step/half-step diminished scale"}
  \bar "||"
}

\include "include/treble.ly"

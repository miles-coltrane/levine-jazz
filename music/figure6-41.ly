\version "2.24.4"
\include "include/prologue.ly"

% Little One, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  r8 | f2.:min | g:min/f | f:sus7.9- | r |
  ef:7/f
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 8 af'8 |
  \tuplet 3/2 {g bf d~} \tupletUp\tuplet 3/2 {d4 f4~ f8 d8} |
  \tupletDown\tuplet 3/2 {g, bf d~} \tupletUp\tuplet 3/2 {d4 f4~ f8 d8} |
  \tupletUp\tuplet 3/2 {f, bf c~} \tupletUp\tuplet 3/2 {c4 f4~ f8 c8} | \break
  \tupletUp\tuplet 3/2 {f,8 bf8 c8~}
  \tupletUp\tuplet 3/2 {c4 f4~ f8 g8} |
  \tupletDown\tuplet 3/2 {af8 g8 f8~} f2
  \bar "||"
}

\include "include/treble.ly"

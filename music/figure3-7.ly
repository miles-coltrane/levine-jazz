\version "2.24.4"
\include "include/prologue.ly"

% Self-Portrait in Three Colors, Charles Mingus, Mingus Ah Um
theTempo = 110
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r4. | ef1:maj7
}
theTreble = \relative {
  \partial 4.
  g'8 af bf | c af \stemDown bf16 c bf g \stemUp af bf af f g af g ef |
  f g f d ef c d8 ef f g4~ | \break
  g8 f16 ef16 d8 bf8 g2
  \bar "||"
}

\include "include/treble.ly"

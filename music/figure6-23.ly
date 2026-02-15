\version "2.24.4"
\include "include/prologue.ly"

% Empathy, Duke Pearson, Sweet Honey Bee
theTempo = 115
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  c1:min | g:7 |
  c1:min | g:7 |
  c1:min | g:7 |
  c1:min | g:7 |
}
theTreble = \relative {
  r2
  \tuplet 3/2 {r8 c''8 c}
  \tuplet 3/2 {c c c} |
  \tuplet 3/2 {ef c r8}
  \tuplet 3/2 {r d d }
  \tuplet 3/2 {d d d}
  \tuplet 3/2 {f d r} | \break
  \tuplet 3/2 {r c c}
  \tuplet 3/2 {c c c}
  \tuplet 3/2 {ef c bf}
  \tuplet 3/2 {bf bf bf} |
  \tuplet 3/2 {bf bf bf}
  \tuplet 3/2 {bf g bf}
  \tuplet 3/2 {d g, r}
  \tuplet 3/2 {g g g} |\break
  \tuplet 3/2 {g g g}
  \tuplet 3/2 {bf f r}
  \tuplet 3/2 {r g g}
  \tuplet 3/2 {g bf f} |
  \tuplet 3/2 {r g bf}
  \tuplet 3/2 {f g g}
  \tuplet 3/2 {g bf f}
  \tuplet 3/2 {g g g} |\break
  \tuplet 3/2 {g bf g}
  \tuplet 3/2 {d' c c}
  \tuplet 3/2 {ef d d}
  \tuplet 3/2 {d f d} |
  \tuplet 3/2 {g f f}
  \tuplet 3/2 {f af g}
  \tuplet 3/2 {bf af af }
  \tuplet 3/2 {af c b}
  \bar "||"
}

\include "include/treble-aligned.ly"

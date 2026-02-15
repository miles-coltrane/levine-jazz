\version "2.24.4"
\include "include/prologue.ly"

% All Of You, Miles Davis, My Funny Valentine
theTempo = 150
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 |
  g:min7 | c:7 |
  f:min7 | bf:7 |
  g:min7 | c:7
}
theTreble = \relative {
  \tuplet 3/2 {af'8 f bf}
  \tuplet 3/2 {g c af}
  \tuplet 3/2 {d bf ef}
  \tuplet 3/2 {c f d} |
  \omit TupletNumber
  \tuplet 3/2 {ef c d}
  \tuplet 3/2 {bf c af}
  \tuplet 3/2 {bf g af}
  \tuplet 3/2 {f a fs} | \break
  \tuplet 3/2 {bf g c}
  \tuplet 3/2 {a df bf}
  \tuplet 3/2 {ef c e}
  \tuplet 3/2 {cs fs ef} |
  \tuplet 3/2 {g e a}
  \tuplet 3/2 {fs bf g}
  \tuplet 3/2 {c a df}
  \tuplet 3/2 {bf ef c} | \break
  \tuplet 3/2 {f c af}
  \tuplet 3/2 {f e' c}
  \tuplet 3/2 {af e ef'}
  \tuplet 3/2 {c af ef} |
  \tuplet 3/2 {d' bf g}
  \tuplet 3/2 {d c' af}
  \tuplet 3/2 {f c bf'}
  \tuplet 3/2 {g e b} | \break
  \tuplet 3/2 {a' f d}
  \tuplet 3/2 {a a' fs}
  \tuplet 3/2 {d a a'}
  \tuplet 3/2 {fs d a} |
  \tuplet 3/2 {a' e cs}
  \tuplet 3/2 {a a' e}
  \tuplet 3/2 {cs a a'}
  \tuplet 3/2 {e cs a} | \break
  \bar "||"
}

\include "include/treble-aligned.ly"

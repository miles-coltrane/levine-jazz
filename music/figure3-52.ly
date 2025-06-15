\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min g:sus9- | g2:min g:sus9- |
}
theTreble = \relative {
  \relative {
    <<
     {
     d'4~ \tuplet 3/2 {d8 c8 bf8}
     c4~ \tuplet 3/2 {c8 d8 f8}
     }
     \new Voice {\voiceTwo <a, bf>2 <g af>2 }
    >> |
    <<
     {
     d'4~ \tuplet 3/2 {d8 c8 bf8}
     }
     \new Voice {\voiceTwo <a bf>2 }
    >> <g af c>2
    \bar "||"
  }
}
theBass = {
  r8 g,8 g,4 r8 g,8 g,4|
  r8 g,8 g,4 r8 g,8 g,4|
  \bar "||"
}

\include "include/dual.ly"

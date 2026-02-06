\version "2.24.4"
\include "include/prologue.ly"

% Some Other Time, Leonard Bernstein
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:maj7 g:sus7 | c:maj7 g:sus7
}
theTreble = \relative {
  r4 \tuplet 3/2 {e'8 f8 g8}
  <<
    { g4. g8 }
    \new Voice { \voiceTwo <a, c f>2}
  >> |
  <<
    { a'4 g2. }
    \new Voice {s2 \voiceTwo <a, c f>2 }
  >>
  \bar "||"
}
theBass = \relative {
  \skip \f % spacer to set voice volume
  c,2 g' | c, g'
  \bar "||"
}

\include "include/dual.ly"

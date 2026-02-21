\version "2.24.4"
\include "include/prologue.ly"

% Disco Lucy, Adamson & Daniel
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:7.11+ | r | a:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <b e'>4 r4
  <<
    {
      \stemUp \tieUp
      e'4 cs'4~ |
      cs'2. d'4
    }
    \new Voice { \voiceTwo
      b2~ | b1
    }
  >> |
  <g c' e'>1
  \bar "||"
}
theBass = {
  <g, f>4 r4 <g,~ a~>2 |
  <g, a>1 | |
  a,1
  \bar "||"
}

\include "include/dual.ly"

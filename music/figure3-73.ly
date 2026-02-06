\version "2.24.4"
\include "include/prologue.ly"

% Summertime, George Gershwin
theTempo = 105
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | f1:maj7.3-
}
theTreble = \relative {
  \partial 4 c''8 af \bar "||"
  <<
    {\tieUp c1~ | \stemUp c4 bf8 af8 \tuplet 3/2 {bf4 c4 af} }
    \new Voice { \voiceTwo <e~ g~>1 | <e g>1}
  >> |
  f4 c2.
  \bar "||"
}
theBass = {
  \partial 4 r4 \bar "||"
  <f~ af~ c'~>1 |
  <f~ af~ c'~>1 |
  <f af c'>1 |

  \bar "||"
}

\include "include/dual.ly"

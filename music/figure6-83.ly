\version "2.24.4"
\include "include/prologue.ly"

% Dolphin Dance, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:/e | c1:/e
}
theTreble = {
  <<
  {
    \stemDown
    <a d' fs'>2.
    <a d' fs'>8
    <g~ c'~ e'~>8 |
    <g c' e'>1
  }
  \new Voice { \voiceTwo
    \stemUp\tupletUp
    \tuplet 3/2 {f''8\rest e'' d''}
    \tuplet 3/2 {e'' d'' e''}
    \tuplet 3/2 {d'' e'' d''}
    \tuplet 3/2 {e'' d'' e''} |
    \tuplet 3/2 {d'' e'' d''}
    \tuplet 3/2 {e'' d'' e''}
    \tuplet 3/2 {f'' e'' d''~}
    d''4
  }
  >>
  \bar "||"
}
theBass = {
  <e, e>2. <e, e>8 <e,~ e~>8 | <e, e>1
  \bar "||"
}

\include "include/dual.ly"

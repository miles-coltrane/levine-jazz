\version "2.24.4"
\include "include/prologue.ly"

% Glass Enclosure, Bud Powell, The Amazing Bud Powell Vol. II
theTempo = 220
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7.5+
}
theTreble = \relative {
  <<
    % TODO: improve markup of chord name
    {c''1}^\markup{(C/A♭)}
    \new Voice { \voiceTwo
      r8
      <e,~ g~>8
      <e g>2.
    }
  >>
  \bar "||"
}
theBass = {
  <<
    { c'1 }
    \new Voice { \voiceTwo
      d8\rest
      <af,~ e~ g~>8
      <af, e g>2.
    }
  >>
  \bar "||"
}

\include "include/dual.ly"

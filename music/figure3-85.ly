\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7.5+ % TODO: add "(C/A♭)" after chord name
}
theTreble = \relative {
  <<
    {c''1}
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

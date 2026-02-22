\version "2.24.4"
\include "include/prologue.ly"

% All The Way, Woody Shaw, Setting Standards
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  af1:sus4 | e2:maj7 ef4:min7 af4:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.2
  <<
    {\stemUp\tieUp
      af'8 bf'8 r8 af'16 af'16 af'8 ef'8~ \tuplet 3/2 {ef'8 f'8 gf'8} |
      gs'8 as'8 r8 gs'16 gs'16 af'8 ef'8~ ef'4
    }
    \new Voice {\voiceTwo
      <bf df' f'>1 |
      <gs ds'>2 <gf df'>4 <gf c'>4
    }
  >>
  \bar "||"
}
theBass = {
  <af, gf>1 |
  <e, b,>2 ef,4 af,4
  \bar "||"
}

\include "include/dual.ly"

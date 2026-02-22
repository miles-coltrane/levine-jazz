\version "2.24.4"
\include "include/prologue.ly"

% All The Way, Woody Shaw, Setting Standards
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gf2:maj7 f2:min7 |
  ef2.:min7 gf4/df |
  c2:min7 f2:7 |
  bf4:min7 a4:7 af4:min7 df4:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 1.8
  <<
    { \stemUp
      bf'4 bf'2 a'8 bf'8 | c''4 bf'4 af'4
    }
    \new Voice { \voiceTwo
      <df' f'>2 <af ef'>2 |
      <df' gf'>2.
    }
  >> <bf df' gf'>4  |
  <<
    { \stemUp
      \tuplet 3/2 {f'4 f'4~ f'8 f'16 gf'16 } f'4. ef'16 d'16
    }
    \new Voice {\voiceTwo
      <g bf ef'>2 <a d'>2
    }
  >>
  <af df'>4 <g df'>4 <gf cf' df'>4 <f cf' df'>4
  \bar "||"
}
theBass = {
  gf,2 f,2 |
  ef,2. df,4 |
  c,2 <f, ef>2 |
  bf,4 a,4 af,4 df,4
  \bar "||"
}

\include "include/dual.ly"

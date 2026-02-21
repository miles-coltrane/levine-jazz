\version "2.24.4"
\include "include/prologue.ly"

% Soul Eyes, Mal Waldron
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:alt | ef:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp bf'2. af'8 bf'8 | df''2. bf'8 af'8 }
    \new Voice { \voiceTwo <ef' g'>1 | <d' gf'>1 }
  >> |
  <c' f' bf'>1
  \bar "||"
}
theBass = {
  <f af c>1 | <bf, af>1 | <ef g>1
  \bar "||"
}

\include "include/dual.ly"

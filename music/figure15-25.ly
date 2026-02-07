\version "2.24.4"
\include "include/prologue.ly"

% All Of You, Miles Davis, My Funny Valentine
theTempo = 190
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:maj7 c1:alt f1:min7 bf1:7.9- |
  ef1:maj7 fs:7   b1:maj7 bf1:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \repeat volta 2 { \bar ".|:"
    <c' f' bf'>1 |
    <bf ef' af'>1 |
    <ef' af' c''>1 |
    <d' g' b'>1
  }
  \repeat volta 2 { \bar ":|.|:"
    <c' f' bf'>1 |
    <as ds' gs'>1 |
    <gs cs' fs'>1 |
    <b d' e' g'>1
  }
}
theBass = {
  \repeat volta 2 { \bar ".|:"
    <ef g>1 |
    <c e>1 |
    f,1 |
    <bf, af>1
  }
  \repeat volta 2 { \bar ":|.|:"
    <ef g>1 |
    <fs, e>1 |
    <b, ds>1 |
    <bf, af>1
  }
}

\include "include/dual.ly"

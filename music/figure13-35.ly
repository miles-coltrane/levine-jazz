\version "2.24.4"
\include "include/prologue.ly"

% Round Midnight, Thelonius Monk
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef4:min ef:maj7.3- ef:min7 ef:min6
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  r4 bf16 ef f bf gf4. bf,8
  \bar "||"
}
theBass = {
  <<
    {ef4 d df c}
    \new Voice { \voiceTwo af,1}
  >>
  \bar "||"
}

\include "include/dual.ly"

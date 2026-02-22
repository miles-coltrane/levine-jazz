\version "2.24.4"
\include "include/prologue.ly"

% My Foolish Heart, Bobby Hutcherson, Solo/Quartet
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g2:min7 df2:7.11+  | c1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  <<
    { \stemUp
      bf'8 c''8 bf'2.
    }
    \new Voice { \voiceTwo
      <d' f'>2 <cf' ef'>2
    }
  >> |
  <d' ef' g' bf'>1
  \bar "||"
}
theBass = {
  <g, f>2 <df f>2 | c1
  \bar "||"
}

\include "include/dual.ly"

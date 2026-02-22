\version "2.24.4"
\include "include/prologue.ly"

% Bewitched, Bothered And Bewildered, Ralph Moore, Round Trip
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:sus4
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  <<
    {\stemUp\tieUp
      c''8 b'8 g'2 c''8 b'8
    }
    \new Voice {\voiceTwo
      <c' f' a'>2 <a c' f'>2
    }
  >>
 | <a c' f' g'>2
  \bar "||"
}
theBass = {
  <g, f>2 <g, f>2  | <g, f>2
  \bar "||"
}

\include "include/dual.ly"

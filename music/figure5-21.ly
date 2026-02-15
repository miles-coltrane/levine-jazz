\version "2.24.4"
\include "include/prologue.ly"

% If I Were A Bell, Miles Davis, Relaxin'
theTempo = 190
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf2:/d ef:/df | f2:/c
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {bf'4 bf bf4. c8}
    \new Voice {\voiceTwo f,2 <ef g>2}
  >> |
  <c f a>2
  \bar "||"
}
theBass = {
  d2 df2 | c2
  \bar "||"
}

\include "include/dual.ly"

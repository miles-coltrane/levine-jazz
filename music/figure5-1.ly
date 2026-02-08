\version "2.24.4"
\include "include/prologue.ly"

% What The World Needs Now Is Love, Mulgrew Miller
theTempo = 105
theKey = c
theSignature = 3/4
theChords = \chordmode {
  \tuplet 4/3 {f4:/df ef:/b f:/df c:/af } |
  ef2.:/a |
  c:/b |
  d:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3
  \tuplet 4/3 { <c' f a>4 <bf ef g> <c f a> <g c e>} |
  <bf ef g>2
  e8 g8 |
  <<
  {\stemUp \tieUp b2~b8 d8 | b8 bf8 a2}
  \new Voice { \voiceTwo <c, e g>2. | <c e fs>2. }
  >>
  \bar "||"
}
theBass = {
  \tuplet 4/3 {df4 b, df af,} |
  a,2. |
  b,2. |
  d,2.
  \bar "||"
}

\include "include/dual.ly"

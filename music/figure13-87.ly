\version "2.24.4"
\include "include/prologue.ly"

% The Surrey With The Fringe On Top, Kenny Barron, The Only One
theTempo = 134
theKey = c
theSignature = 4/4
theChords = \chordmode {
  % TODO: get chord to show as D♭Δ♯4
  d2:min7 g2:7 | df1:maj7.4+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \set fingeringOrientations = #'(right)
  <<
    {\stemUp c''4 a'4 f'8 e'8 d'8}
    \new Voice {\voiceTwo <c' f'>2 <a b>4.}
  >> <f~ g~  c'~>8 |
  <f g c'\seventh>1
  \bar "||"
}
theBass = {
  d,2 g,4. <c,~ g,~>8 | <c, g,>1
  \bar "||"
}

\include "include/dual.ly"

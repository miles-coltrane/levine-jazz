\version "2.24.4"
\include "include/prologue.ly"

% Sophisticated Lady, Duke Ellington
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f4:7.9- | bf1:min
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \set fingeringOrientations = #'(right)
  \partial 4
  <a d' gf'\flatnine>4
  \bar "||"
  <c'  df' f'>1
  \bar "||"
}
theBass = {
  \partial 4
  <f, ef>4
  \bar "||"
  <bf, g>1
  \bar "||"
}

\include "include/dual.ly"

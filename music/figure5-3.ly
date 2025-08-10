\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:/c |
  df1:/c |
  d1:/c |
  ef1:/c |
  e:/c |
  f1:/c |
  gf1:/c |
  g1:/c |
  af1:/c |
  a1:/c |
  bf1:/c |
  b1:/c |
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  <g c e>1 |
  <af df f> |
  <a d fs> |
  <bf ef g> |
  <b e gs> |
  <c f a> |
  <df gf bf> |
  <d g b> |
  <ef af c> |
  <e a cs> |
  <f bf d> |
  <fs b ds> |
  \bar "||"
}
theBass = {
  c1 | c1 | c1 | c1 |
  c1 | c1 | c1 | c1 |
  c1 | c1 | c1 | c1
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {}
theTreble = \relative {
  e'8 c e gs  fs d fs as |
  gs e gs c  as fs as d | \break
  c gs c e  d bf d  fs |
  e c e gs  fs2
  \bar "||" \break
  d8 fs d bf  c e c gs | as d as fs  gs c gs e | \break
  fs as fs d  e gs e c |
  d fs d bf c2
  \bar "||"
}

\include "include/treble-aligned.ly"

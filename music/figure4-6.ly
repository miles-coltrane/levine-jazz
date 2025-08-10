\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 df ds e fs g a bf |
  c bf a g fs e ef df |
  ds e fs g a bf c df | \break
  ef df c bf a g fs e |
  fs g a bf c df ds e |
  fs e ef df c bf a g | \break
  a bf c df ds e fs g |
  a g fs e ef df c bf |
  c1
  \bar "||"
}

\include "include/scale-nochords.ly"

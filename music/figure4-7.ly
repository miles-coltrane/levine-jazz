\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c''8 bf a g fs e ef df |
  ds e fs g a bf c df |
  ef df c bf a g fs e | \break
  fs g a bf c df ds e |
  fs e ef df c bf a g |
  a bf c df ds e fs g | \break
  a g fs e ef df c bf |
   c df ds e fs g a bf |
  c1
  \bar "||"
}

\include "include/scale-nochords.ly"

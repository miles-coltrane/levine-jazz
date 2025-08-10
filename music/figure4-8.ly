\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 d e fs gs as c d |
  e d c as gs fs e d |
  e fs gs as c d e fs | \break
  gs fs e d c as gs fs |
  gs as c d e fs gs as |
  c as gs fs e d c as | \break
  c d e fs gs as c d |
  e d c as gs fs e d |
  c1
  \bar "||"
}

\include "include/scale-nochords.ly"

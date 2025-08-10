\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c''8 as gs fs e d c as |
  c d e fs gs as c d |
  e d c as gs fs e d | \break
  e fs gs as c d e fs |
  gs fs e d c as ggs fs |
  gs as c d e fs gs as | \break
  c as gs fs e d c as |
  c d e fs gs as c4
  \bar "||"
}

\include "include/scale-nochords.ly"

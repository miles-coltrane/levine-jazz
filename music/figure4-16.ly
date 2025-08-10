\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theTreble = \relative {
  c'8 b c e d cs d f |
  e ds e g f e f a |
  g fs g b a gs a c |
  b gs b d c2
  \bar "||"
}

\include "include/scale-nochords2.ly"

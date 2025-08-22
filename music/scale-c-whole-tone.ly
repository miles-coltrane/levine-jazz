\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theName = \markup {""}
theTreble = \relative {
  c'4 d e fs gs bf c^\markup\right-align{"C whole-tone"}
}

\include "include/scale-name-green.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = a
theSignature = 8/4
theName = \markup {"3"}
theTreble = \relative {
  c'4 d e fs gs a b c^\markup\right-align{"C Lydian augmented"}
}

\include "include/scale-name-blue.ly"

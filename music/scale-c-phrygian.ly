\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = af
theSignature = 8/4
theName = \markup {"iii"}
theTreble = \relative {
  c'4 df ef f g af bf c^\markup\right-align{"C Phrygian"}
}

\include "include/scale-name.ly"

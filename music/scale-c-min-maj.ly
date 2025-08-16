\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theName = \markup {"1"}
theTreble = \relative {
  c'4 d ef f g a b c^\markup\right-align{"C minor-major"}
}

\include "include/scale-name-blue.ly"

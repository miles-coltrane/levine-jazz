\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = g
theSignature = 8/4
theName = \markup {"IV"}
theTreble = \relative {
  c'4 d e fs g a b c^\markup\right-align{"C Lydian"}
}

\include "include/scale-name.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theName = \markup {"H/W"}
theTreble = \relative {
  c'4 df ef e fs g a bf c^\markup\right-align{"C half-whole diminished"}
}

\include "include/scale-name-red.ly"

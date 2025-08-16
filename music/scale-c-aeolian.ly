\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 8/4
theName = \markup {"vi"}
theTreble = \relative {
  c'4 d ef f g af bf c^\markup\right-align{"C Aeolian"}
}

\include "include/scale-name.ly"

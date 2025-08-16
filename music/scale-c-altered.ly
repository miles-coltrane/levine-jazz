\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = df
theSignature = 8/4
theName = \markup {"7"}
theTreble = \relative {
  c'4 df ef ff gf af bf c^\markup\right-align{"C altered"}
}

\include "include/scale-name-blue.ly"

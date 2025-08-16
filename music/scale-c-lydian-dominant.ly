\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = g
theSignature = 8/4
theName = \markup {"4"}
theTreble = \relative {
  c'4 d e fs g a bf c^\markup\right-align{"C Lydian dominant"}
}

\include "include/scale-name-blue.ly"

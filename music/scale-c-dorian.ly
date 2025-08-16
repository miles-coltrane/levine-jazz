\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 8/4
theName = \markup {"ii"}
theTreble = \relative {
  c'4 d ef f g a bf c^\markup\right-align{"C Dorian"}
}

\include "include/scale-name.ly"

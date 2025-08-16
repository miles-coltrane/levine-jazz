\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 8/4
theName = \markup {"6"}
theTreble = \relative {
  c'4 d ef f gf af bf c^\markup\right-align{"C Locrian #2"}
}

\include "include/scale-name-blue.ly"

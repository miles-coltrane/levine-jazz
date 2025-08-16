\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = df
theSignature = 8/4
theName = \markup {"vii"}
theTreble = \relative {
  c'4 df ef f gf af bf c^\markup\right-align{"C Locrian"}
}

\include "include/scale-name.ly"

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theName = \markup {"I"}
theTreble = \relative {
  c'4 d e f g a b c^\markup\right-align{"C Ionian"}
}

\include "include/scale-name.ly"

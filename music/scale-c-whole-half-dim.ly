\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theName = \markup {"W/H"}
theTreble = \relative {
  c'4 d ef f gf af a b c^\markup\right-align{"C whole-half diminished"}
}

\include "include/scale-name-red.ly"

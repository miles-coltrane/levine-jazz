\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = f
theSignature = 8/4
theName = \markup {"V"}
theTreble = \relative {
  c'4 d e f g a bf c^\markup\right-align{"C Mixolydian"}
}

\include "include/scale-name.ly"

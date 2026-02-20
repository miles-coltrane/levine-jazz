\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  e1:min7.5- | a:alt | c:min7 | f:7
}
theTreble = \relative {
  e'16 c e g  fs d fs a   g e g bf   a fs a c |
  bf g bf df  c a c ef    df bf df   f ef c ef g | \break
  f d f a     g ef g bf   a f a c    g ef g bf |
  f d f a     ef c ef g   d b_\markup\center-align{♯11} d f    c a c ef
  \bar "||"
}
theBass = {
  <e a bf d'>1 |
  <f c' df' f'>1 |
  <ef g bf d'>1 |
  <ef g a d'>1
  \bar "||"
}

\include "include/dual-aligned.ly"

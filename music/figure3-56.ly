\version "2.24.4"
\include "include/prologue.ly"

% Sunshower, Kenny Barron, Maybeck Recital Hall Series
theTempo = 75
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min | a:min6- | a1:min | a:min6- | a1:min
}
theTreble = \relative {
  \relative {
    <<
     {
       \stemUp
       e''4 f8 e8~ e4.d8~ |
       d4 e4 d2 |
       c4 d8 c8~ c4. b8~ |\break
       b4. c8 b4. g8
     }
     \new Voice { \voiceTwo
     <b~ c~>2. <b c>8 <f~ a~>8 |
     <f a>1 |
     e2.~ e8 <d~ f~>8 | \break
     <d f>1
     }
    >> |
    <b c e>1
    \bar "||"
  }
  \bar "||"
}
theBass = {
  <a,~ e~>2. <a, e>8 <a,~ f~>8 |
  <a, f>1 |
  <a,~ e~>2. <a, e>8 <a,~ f~>8 | \break
  <a, f>1 |
  <a, e>1
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

% Gichi, Booker Ervin, Back From The Gig
theTempo = 150
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r8 | e:sus7.9-
}
theTreble = \relative {
  \relative {
    \skip \f % spacer to set voice volume
    \partial 8 r8 |
    \repeat volta 2 {
      r4 <f a b e>4 r8 <f a b e>4 r8 |
      r8 <f a b e>4 r8 r4 <f a b e>4
    }
  }
}
theBass = {
  \partial 8 b,8 |
  e,4. b,8~b,4. d8~ |
  d4. e8 e4. b,8 |
}

\include "include/dual.ly"

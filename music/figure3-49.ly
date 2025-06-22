\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  r4 | ef2.:maj7.3- | af/ef | ef:maj7.3- | ef:sus7.9-
}
theTreble = \relative {
  \relative {
    \skip \f % spacer to set voice volume
    \partial 4 gf'8 gf8 |
    <<
      { \tuplet 3/2 {d8 bf8 d8} f4. f8 }
      \new Voice { \voiceTwo gf,2. }
    >> |
    <<
      { \tuplet 3/2 {ef'8 c8 ef8} f4. ef8 }
      \new Voice { \voiceTwo af,2. }
    >> |
    <<
      { d16 bf d ef \tieUp bf2~ }
      \new Voice { \voiceTwo gf2. }
    >> |
    <ff af bf>2.
    \bar "||"
  }
}
theBass = {
  \partial 4 r4 | ef,2. | ef, | ef, | ef,
  \bar "||"
}

\include "include/dual.ly"

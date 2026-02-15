\version "2.24.4"
\include "include/prologue.ly"

% Dolphin Dance, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:/g | c:min/g | f:sus7 |
  f:7.9-.11+ | f:sus7 | r4 a4:sus7 a2:7
}
theTreble = \relative {
  r8 a'4 ds,16 e16 <cs e a>4. e8 |
  \tuplet 3/2 {d8 ef8 <d~ ef~ g~ a~>8} <d ef g a>2. |
  r4 \tuplet 3/2 {r8 d8 ef8} <d ef g bf>4. ef8 | \break
  \tuplet 3/2 {d8 ef8 <d~ fs~ b~>} <d fs b>2. |
  <<
    { b'4\rest b8\rest ef,8 c'4. ef,8 }
    \new Voice { \voiceTwo <ef, g bf>1}
  >> |
  <<
    { \stemUp \tieUp
      \tuplet 3/2 {d'8 e8 cs'8~} cs2.
    }
    \new Voice {\voiceTwo
      \tuplet 3/2 { \once\omit TupletNumber s8 s8 <d,~ g~ b~>8} <d g b>8 <cs fs>4.
    }
  >>
  \bar "||"
}
theBass = {
  <g,~ f~>1 |
  <g, f>1 |
  f,1 | \break
  <<
    { \tuplet 3/2 {\stemUp r8 r8 <ef~ a~>8} <ef a>2. }
    \new Voice { \voiceTwo f,1 }
  >> |
  f,1 |
  <<
    {
      \stemUp
      \tuplet 3/2 { \once\omit TupletNumber s8 s8 a8~ }
      a8 g4.
    }
    \new Voice { \voiceTwo
      \tuplet 3/2 { r8 r8 \stemUp a,8 }~
      \stemDown a,2.
    }
  >>
  \bar "||"
}

\include "include/dual.ly"

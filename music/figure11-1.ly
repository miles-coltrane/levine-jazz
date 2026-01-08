\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  \repeat volta 2 {
  bf2:7 g:min7 | c:min7 f:7 | bf g:min7 | c:min7 f:7 | bf bf:7 | ef ef:min |
  \alternative {
    \volta 1 { bf g:min7 | c:min7 f:7 }
    \volta 2 { bf f:7 | bf1 }
  } } d1:7 | d1:7 |
  g1:7 | g1:7 | c1:7 | c1:7 | f1:7 | f1:7 | bf2 g2:min7 | c2:min7 f2:7 |
  bf2 g:min7 | c:min7 f:7 | bf bf:7 | ef ef:min | bf f:7 | bf1 |
}
theTreble = \relative {
  \repeat volta 2 { \bar ".|:"
  <d' f bf>2 <bf f' g> |
  <ef g c> <a ef f> |
  <bf, d f> <bf f' g> |
  <g bf ef> <a ef' f> |
  <d f bf> <d af' bf> |
  <bf ef g> <bf c gf'> | \break
  \alternative {
    \volta 1 { <bf d f> <bf f' g> | <g bf ef> <a ef' f> }
    \volta 2 { <bf d f> <a c ef> | <f bf d>1}
  } } \bar "||" <c' a'>1 | <c a'> | \break
  <b a'>1 |
  <b a'>1 |
  <bf g'>1 |
  <bf g'>1 |
  <a g'>1 |
  <a g'>1 \bar "||"
  <d f bf>2 <bf f' g>2 |
  <ef g c>2 <a, ef' f> | \break
  <bf d f>2 <bf f' g> |
  <g bf ef>2 <a ef' f> 2|
  <d f bf>2 <d af' bf>2 |
  <bf ef g>2 <bf c gf'>2 |
  <bf d f>2 <a c ef>2 |
  <f bf d>1
  \bar "||"
}
theBass = {
  \repeat volta 2 { \bar ".|:"
  bf,,2 g, | c, f, | bf,,2 g, | c, f, | bf, bf,, | ef, ef, | \break
  \alternative {
     \volta 1 { bf,,2 g, | c, f, }
     \volta 2 { bf,,2 f, | bf,,1 }
  } } \bar "||" <d fs>1 | <d fs>1 | \break
  <g, f>1 | <g, f>1 | <c e> | <c e> | <f, ef> | <f, ef> \bar "||" bf,,2 g, | c, f, | \break
  bf,,2 g,2 | c,2 f,2 | bf,2 bf,,2 | ef,2 ef,2 | bf,, f,2 | bf,,1
  \bar "||"
}

\include "include/dual-volta.ly"

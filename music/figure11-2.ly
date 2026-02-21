\version "2.24.4"
\include "include/prologue.ly"

% I've Got Rhythm, George Gershwin
theTempo = 180
theKey = bf
theSignature = 4/4
theChords = \chordmode {
  \repeat volta 2 {
  bf2:7 b:dim7 | c:min7 cs:dim7 | d:min7 g:min7 | c:min7 f:7 | bf bf:7/d | ef ef:dim7 |
  \alternative {
    \volta 1 { bf/f g:7.5+ | c:min7 f:7 }
    \volta 2 { f:7 f:7.5+ | bf1:6 }
  } } d1:7 | d1:7 |
  g1:7 | g1:7 | c1:7 | c1:7 | f1:7 | f1:7.5+ | bf2 b2:dim7 | c2:min7 cs2:dim7 |
  d2:min7 g:7 | c:min7 f:7 | bf bf:7/d | ef e:dim7 | f:7 f:7.5+ | bf1:6 |
}
theTreble = \relative {
  \repeat volta 2 { \bar ".|:"
  <d' f g bf>2 <b d f af> |
  <bf ef g> <bf cs e g> |
  <a c f> <b e g> |
  <g bf ef> <a d f> |
  <d f bf> <bf d af'> |
  <bf ef g> <bf cs e g> | \break
  \alternative {
    \volta 1 { <bf d f> <b ef> | <g bf ef> <a d> }
    \volta 2 { <a d f> <a cs ef> | <g c f>1}
  } } \bar "||" <c e a>1 | <c e a> | \break
  <b e a>1 |
  <b e a>1 |
  <bf d g>1 |
  <bf d g>1 |
  <a d g>1 |
  <a cs g'>1 \bar "||"
  <d f g bf>2 <b d f af>2 |
  <bf ef g>2 <bf cs e g> | \break
  <a c f>2 <b e g> |
  <g bf ef>2 <a d f>2 |
  <d f bf>2 <bf d af'>2 |
  <bf ef g>2 <bf cs e g>2 |
  <a d f>2 <a cs f>2 |
  <g c f>1
  \bar "||"
}
theBass = {
  \repeat volta 2 { \bar ".|:"
  bf,2 b, | c cs | d2 <g, f> | c <f, ef> | bf, d, | ef, e, | \break
  \alternative {
     \volta 1 { f,2 <g, f> | c <f, ef> }
     \volta 2 { <f, ef>  <f, ef> | <bf, d>1 }
  } } \bar "||" <d fs>1 | <d fs>1 | \break
  <g, f>1 | <g, f>1 | <c e> | <c e> | <f, ef> | <f, ef> \bar "||" bf,2 b, | c cs | \break
  d2 <g, f>2 | c2 <f, ef>2 | bf,2 d,2 | ef,2 e,2 | <f, ef> <f, ef>2 | <bf, d>1
  \bar "||"
}

\include "include/dual-volta.ly"

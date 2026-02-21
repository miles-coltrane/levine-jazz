\version "2.24.4"
\include "include/prologue.ly"

% I've Got Rhythm, George Gershwin
theTempo = 180
theKey = bf
theSignature = 4/4
% TODO: all of the :alt chords have a :7.9- alternative spelling shown
theChords = \chordmode {
  \repeat volta 2 {
  bf2 g:alt | c:min7 f:alt | d:min7 g:alt | c:min7 f:alt | f:min7 bf:alt | ef:maj7 af:7.11+ |
  \alternative {
    \volta 1 { d:min7 g:alt | c:min7 f:alt }
    \volta 2 { c:min7 f:alt | bf1 }
  } } a:min7 | d1:alt |
  d:min7 | g1:alt | g:min7 | c1:alt | c:min7 | f1:alt | bf2 g2:alt | c2:min7 f2:alt |
  d2:min7 g:alt | c:min7 f:alt | f:min7 bf:alt | ef:maj7 af2:7.11+ | c:min7 f:alt | bf1 |
}
theTreble = \relative {
  \repeat volta 2 { \bar ".|:"
  <c' d f>2 <cf ef bf'> |
  <bf ef g> <a d fs> |
  <a c f> <b e gs> |
  <bf ef g> <a d fs> |
  <af c ef g> <af df gf> |
  <a c f> <c d f> | \break
  \alternative {
    \volta 1 { <a c f> <cf ef b'f> | <ef g c> <ef fs b d> }
    \volta 2 { <bf ef f> <a d fs a> | <c f bf>1}
  } } \bar "||" <c e b'>1 | <c ef af b> | \break
  <c f a!>1 |
  <b e gs>1 |
  <bf d a'>1 |
  <bf df g>1 |
  <bf ef g>1 |
  <a d fs>2 <a df af'>2 \bar "||"
  <c d f>2 <cf ef bf'>2 |
  <bf ef g>2 <a d fs> | \break
  <a c f>2 <b e gs> |
  <bf ef g>2 <a d fs>2 |
  <af c ef g>2 <af df gf>2 |
  <g c f>2 <c d f>2 |
  <bf ef f>2 <a d fs a>2 |
  <c f bf>1
  \bar "||"
}
theBass = {
  \repeat volta 2 { \bar ".|:"
  <bf, g>2 <g, f> | c <f, ef> | d,2 <g, f> | c <f, ef> | f, <bf, d> | ef, <af, gf> | \break
  \alternative {
     \volta 1 { d2 <g, f> | <c bf> <f a> }
     \volta 2 { c2 <f, ef> | <bf, d g>1 }
  } } \bar "||" <a, g>1 | <d fs>1 | \break
  <d g>1 | <g, f>1 | <g, f> | <c e> | c | <f, ef>2 <f, ef>2 \bar "||" <bf, g>2 <g, f> | c <f, ef> | \break
  d,2 <g, f>2 | c2 <f, ef>2 | bf,2 <bf, d>2 | ef,2 <af, gf>2 | c <f, ef>2 | <bf, d g>1
  \bar "||"
}

\include "include/dual-volta.ly"

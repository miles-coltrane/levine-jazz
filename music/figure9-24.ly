\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:maj7 d:7 | g:maj7 bf:7 | ef1:maj7 | a2:min7 d:7 |
  g:maj7 bf:7 |ef:maj7 fs:7 | b1:maj7 | f2:min7 bf:7 |
  ef1:maj7 | a2:min7 d:7 | g1:maj7 | cs2:min7 fs:7 |
  b1:maj7 | f2:min7 bf:7 | ef1:maj7 | cs2:min7 fs:7
}
theTreble = \relative {
  <ds'gs cs>2 <e a d>2 |
  <d fs b> <d g c> |
  <c f bf>1 |
  <c e a>2 <c e b'> | \break
  <b e a>2 <d g bf> |
  <c f bf> <as ds gs> |
  <gs cs fs>1 |
  <c ef af>2 <d g bf>2 | \break
  <c f bf>1 |
  <c e a>2 <c e b'>2 |
  <b e a>1 |
  <b e gs>2 <as ds gs>2 | \break
  <gs cs fs>1 |
  <c ef af>2 <d g bf>2 |
  <c f bf>1 |
  <b e b'>2 <as ds as'>2
  \bar "|."
}
theBass = {
  <b, as>2 <d fs c'>2 | g, <bf, af> | <ef g>1 | <a, g>2 <d fs> | \break
  <g, fs>2 <bf, af> | <ef g> <fs, e> | <b, ds>1 | f,2 <bf, af>2 | \break
  <ef g>1 | <a, g>2 <d fs>2 | <g, fs>1 | cs,2 <fs, e>2 | \break
  <b, ds>1 | f,2 <bf, af>2 | <ef g>1 | cs,2 <fs, e>2
  \bar "|."
}

\include "include/dual-aligned.ly"

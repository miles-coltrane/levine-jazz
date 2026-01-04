\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 3/4
theChords = \chordmode {
  bf2.:min6 |
  b:7.11+ |
  bf:min6 |
  b:7.11+ |
  bf:min6 |
  b:7.11+ |
  bf:min6 |
  b:7.11+ |

  ef:min6 |
  e:7.11+ |
  ef:min6 |
  e:7.11+ |
  bf:min6 |
  b:7.11+ |
  bf:min6 |
  b:7.11+ |

  gf:7 | r |
  f:7 | r |
  bf:min6 |
  b:7.11+ |
  bf:min6 |
  b:7.11+ |
}
theTreble = \relative {
  <c' df f>2. |
  <df f af> |
  <c df f> |
  <df f af> |
  <c df f> |
  <df f af> |
  <c df f> |
  <df f af> | \break

  <c f bf> |
  <d fs as> |
  <c f bf> |
  <d fs as> |
  <c df f> |
  <df f af> |
  <c df f> |
  <df f af> | \break

  <bf ef gf> |
  <bf ef gf> |
  <a d f> |
  <a d f> |
  <c df f> |
  <df f af> |
  <c df f> |
  <df f af>
  \bar "||"
}
theBass = {
  <bf, g>2. |
  <bf, af> |
  <bf, g> |
  <bf, af> |
  <bf, g> |
  <bf, af> |
  <bf, g> |
  <bf, af> | \break

  <ef gf> |
  <e gs> |
  <ef gf> |
  <e gs> |
  <bf, g> |
  <bf, af> |
  <bf, g> |
  <bf, af> | \break

  <gf, ff> |
  <gf, ff> |
  <f ef> |
  <f ef> |
  <bf, g> |
  <bf, af> |
  <bf, g> |
  <bf, af>
  \bar "||"
}

\include "include/dual-aligned.ly"

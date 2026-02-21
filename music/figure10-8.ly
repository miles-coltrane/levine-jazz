\version "2.24.4"
\include "include/prologue.ly"

% Locomotion, John Coltrane, Blue Train
theTempo = 265
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:7 | r | r | r | ef:7 |r | bf:7 | r |
  c:min7 | f:7 | bf:7 | r |   af:7 | r g:7 | r |
  gf:7 | r | f:7 | r |    bf:7 | r | r | r |
  ef:7 | r | bf:7 | r| c:min7 | f:7 | bf:7 | c2:min7 f2:7
}
theTreble = {
  \repeat volta 2 { \bar ".|:"
  <d' g' bf'>1 |
  <d' g' bf'> |
  <d' g' bf'> |
  <d' g' bf'> |
  <df' f' bf'> |
  <df' f' bf'> |
  <d' g' bf'> |
  <d' g' bf'> | \break

  <bf ef' bf'> |
  <a d' a'> |
  <d' g' bf'> |
  <d' g' bf'> |
  }
  <c' f' bf'> |
  <c' f' bf'> |
  <b e' a'> |
  <b e' a'> | \break

  <bf ef' af'> |
  <bf ef' af'> |
  <a d' f'> |
  <a d' f'> \bar "||"

  <d' g' bf'> |
  <d' g' bf'> |
  <d' g' bf'> |
  <d' g' bf'> | \break

  <df' f' bf'> |
  <df' f' bf'> |
  <d' g' bf'> |
  <d' g' bf'> |
  <bf ef' bf'> |
  <a d' a'> |
  <d' g' bf'> |
  <bf ef' bf'>2 <a d' a'>2

  \bar "||"
}
theBass = {
  <bf, af>1 |
  <bf, af> |
  <bf, af> |
  <bf, af> |
  <ef g> |
  <ef g> |
  <bf, af> |
  <bf, af> | \break

  c |
  <f, ef> |
  <bf, af> |
  <bf, af> |

  <af, gf> |
  <af, gf> |
  <g, f> |
  <g, f> | \break

  <gf, ff> |
  <gf, ff> |
  <f, ef> |
  <f, ef> \bar "||"

  <bf, af> |
  <bf, af> |
  <bf, af> |
  <bf, af> | \break

  <ef g> |
  <ef g> |
  <bf, af> |
  <bf, af> |
  c |
  <f, ef> |
  <bf, af> |
  c2 <f, ef>2
  \bar "||"
}

\include "include/dual-aligned.ly"

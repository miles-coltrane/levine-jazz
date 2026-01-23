\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
   d4:min df:dim f/c g/b | bf:sus4 a:sus4 af:dim g:min7 | b1:min7.5- | e1:alt
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <f a d'>4 <g bf e'> <a c' f'> <b d' g'> |
  <c' ef' af'> <b d' fs' a'> <b e' gs' b'> <d' f' bf' c''> |
  <f' f''>2. b'4 |
  <g' c'' e''>1
  \bar "||"
}
theBass = {
  d4 df4 c4 b,4 |
  <bf, af>4 <a, g>4 <af, f>4 <g, f>4 |
  <b, a>1 |
  <e gs d'>1
  \bar "||"
}

\include "include/dual.ly"

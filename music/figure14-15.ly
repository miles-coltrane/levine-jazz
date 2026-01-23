\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f1/fs
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <c' f' a'>8 <df' gf' bf'>4 <c' f' a'>16 <b e' gs'>16 <c' f' a'>4 <c' f' a'>8 <f' bf' d''>8 |
  r8 <d'~ g'~ b'~>8 <d' g' b'>2. |
  <d' g' b'>8 <e' a' cs''>4 <d' g' b'>16 <cs' fs' as'>16 <d' g' b'>4 <d' g' b'>8 <g'~ c''~ e''~>8 | \break
  <g' c'' e''>2 <af' df'' f''>2 |
  <a' d'' fs''>1
  \bar "||"
}
theBass = {
  fs8 g4 fs16 f16 fs4 fs8 b8 |
  r8 gs8~ gs2. |
  gs8 as4 gs16 g16 gs4 gs8 cs'8~ | \break
  cs'2 d'2 |
  ds'1
  \bar "||"
}

\include "include/dual.ly"

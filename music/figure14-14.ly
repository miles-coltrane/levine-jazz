\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  g1:sus4
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
  g8 af4 g16 fs16 g4 g8 c'8 |
  r8 a8~ a2. |
  a8 bf4 a16 gs16 a4 a8 d'8~ | \break
  d'2 ef'2 |
  e'1
  \bar "||"
}

\include "include/dual.ly"

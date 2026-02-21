\version "2.24.4"
\include "include/prologue.ly"

% Dolphin Dance, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  fs1:7.9+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <cs' fs' a'>8 <d' g' bf'>4 <cs' fs' a'>16 <c' f' af'>16 <cs' fs' a'>4 <cs' fs' a'>8 <fs' b' d''> |
  r8 <ds'~ gs'~ b'~>8 <ds' gs' b'>2. |
  <ef' af' cf''>8 <f' bf' df''>4 <ef' af' cf''>16 <d' g' bf'>16 <ef' af' cf''>4 <ef' af' cf''>8 <gs'~ cs''~ e''~>8 | \break
  <gs' cs'' e''>2 <a' d'' f''>2 |
  <bf' ef'' gf''>1
  \bar "||"
}
theBass = {
  <e as>8 <f b>4 <e as>16 <ds a>16 <e as>4 <e as>8 <a ef'>8 |
  r8 <fs~ c'~>8 <fs c'>2. |
  <gf c'>8 <af d'>4 <gf c'>16 <f b>16 <gf c'>4 <gf c'>8 <b~ f'~> | \break
  <b f'>2 <c' fs'>2 |
  <df' g'>1
  \bar "||"
}

\include "include/dual.ly"

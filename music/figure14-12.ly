\version "2.24.4"
\include "include/prologue.ly"

% Dolphin Dance, Herbie Hancock, Maiden Voyage
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1:7.11+ | d2:sus4 d2:7.9- | b1:min7 |
  e2:7.9- d2:min7 | cs1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <<
    {\stemUp a'8 bf'4 a'16 g'16 a'4 a'8 d''8}
    \new Voice { \voiceTwo <df' f>2.}
  >> |
  r8
  <<
    {\stemUp b'8~ b'2.}
    \new Voice { \voiceTwo <c'~ e'~>8 <c' e'>4 <c' ef'>2}
  >> |
  <<
    { \stemUp b'8 cs''4 b'16 a'16 b'4}
    \new Voice { \voiceTwo <d' fs'>2.}
  >> b'8 <f'~ gs'~ b'~ e''~>8 | \break
  <f' gs' b' e''>2 <f' c'' f''>2 |
  <b' e'' fs''>1
  \bar "||"
}
theBass = {
  <ef g c'>2. s4 |
  r8 <d~ g~>8 <d g>4 <d fs>2 |
  <b, a>2. r8 <e gs d'>8 | \break
  <e gs d'>2 <d c'>2 |
  <cs b>1
  \bar "||"
}

\include "include/dual.ly"

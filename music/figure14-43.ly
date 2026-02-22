\version "2.24.4"
\include "include/prologue.ly"

% Bewitched, Bothered And Bewildered, Ralph Moore, Round Trip
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:maj7 bf4:sus4 af4:dim |
  c2/g fs4:min7 ef4:dim |
  d2:min7 f2:7 |
  bf2:7 a2:7.5+ |
  af2:7.11+ g4:alt g4:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3.2
  <<
    { \stemUp\tieUp a'8 b'8 c''4~ }
    \new Voice {\voiceTwo <c' e'>2 }
  >> <c' ef' af' c''>4 <b e' b'>4 |

  <c' e' g' c''>2
  <<
    {\stemUp b'8 a'8 g'8 <b c' fs'>8}
    \new Voice {\voiceTwo <a e' gs'>4 s4 }
  >> |

  <<
    {\stemUp g'4 d'2 e'4}
    \new Voice {\voiceTwo <a c' f'>2 gs2 }
  >> |

  <c' d' f'>2 <cs' f'>2 | \break

  <c' d' f'>2 <cf' ef' g' bf'>4 <b e' gs' b'>4

  \bar "||"
}
theBass = {
  f,2 <bf, af>4 <af, f>4 |
  <g, e>2 fs,4. ef,8 |
  d,2 e,2 |
  <bf, af>2 <a, g>2 | \break
  <af, gf>2 <g, f>4 <g, f>4
  \bar "||"
}

\include "include/dual.ly"

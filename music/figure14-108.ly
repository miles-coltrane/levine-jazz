\version "2.24.4"
\include "include/prologue.ly"

% Without A Song, Joe Henderson, The Kicker
theTempo = 20
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  r2. | ef1:maj7 | a1:7.9- | af1:maj7 | fs1:7 |
  af1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  \set fingeringOrientations = #'(right)
  \partial 2. bf'4 bf'4 d''4
  \bar "||"
  <c' f' bf' d''\seventh>1 |
  <<
    {\stemUp\tieUp
      r4 r8 bf'8 bf'4 g'4 |
      <g'\seventh>4 ef'4 ef'2 |
      r4 r8 fs'8 fs'4 as'4
    }
    \new Voice {\voiceTwo\tieDown
      cs'1 |
      <bf c'>1 |
      as1
    }
  >> | \break
  <cs' ds' fs' as'\seventh>1
  \bar "||"
}
theBass = {
  \partial 2.  r4 r2
  \bar "||"
  <ef, bf,>1 |
  <a, g>1 |
  <af, g>1 |
  <fs, e>1 | \break
  <b, gs>1
  \bar "||"
}

\include "include/dual.ly"

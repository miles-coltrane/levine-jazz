\version "2.24.4"
\include "include/prologue.ly"

% My Foolish Heart, Bobby Hutcherson, Solo/Quartet
theTempo = 100
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min7 | e2:min7 a2:7 | bf1:maj7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.1
  <<
    {\stemUp\tieUp
      g'2~ g'8 c'8 ef'8 g'8 |
    }
    \new Voice {\voiceTwo
      <bf d' ef'>1
    }
  >> |
  <d' fs' a'>2 <cs' fs' a'>2 |
  <c' d' f' a'>1
  \bar "||"
}
theBass = {
  c1 |
  <e g b>2 <a, f>2 |
  <bf, a>1
  \bar "||"
}

\include "include/dual.ly"

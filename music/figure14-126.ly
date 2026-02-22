\version "2.24.4"
\include "include/prologue.ly"

% Yesterdays, Jerome Kern
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:sus4 f2:7.9- | fs4:7/bf bf4 ef4:sus4 f4:sus | e2:min7 f2:7 bf2:maj7 ef2:7.11+
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  r8 <ef' g' bf' d''>4.
  <<
    {\stemUp\tieUp
      d''4 a'4
    }
    \new Voice {\voiceTwo
      <d' fs' a'>2
    }
  >> |
  <cs' fs' c''>4 <d' g' bf'>4 <af df' f'>4 <bf ef' g'>4 |
  <d' fs' a'>2 <a d' f' a'>2 |
  <c' d' f' a'>2 <c' df' f' a'>2
  \bar "||"
}
theBass = {
  <<
   {\stemUp r8 bf4.}
   \new Voice {\voiceTwo f2}
  >> <ef a>2 |
  <<
   {\stemUp e4 f4 ef4 f4}
   \new Voice {\voiceTwo bf,2 s2}
  >> |
  <e g b>2 <f, ef>2 |
  <bf, a>2 <ef g>2
  \bar "||"
}

\include "include/dual.ly"

\version "2.24.4"
\include "include/prologue.ly"

% Embraceable You, Donald Brown, Sources Of Inspiration
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  ef1 | fs2:dim g2:maj7 | e1:min7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  \tupletUp
  <c' f' bf'>2 \tuplet 3/2 {c''4 d''4 ef''4} |
  <ds' fs' a' c''>4. <d'~ g'~ b'~ d''~>8 <d' g' b' d''>4 <ds' ds''>4 |
  <<
    {\stemUp\tieUp
      e''8 a'8 a'4 a'2
    }
    \new Voice {\voiceTwo
      fs'1
    }
  >>
  \bar "||"
}
theBass = {
  <ef g>1 |
  <fs a c'>4. <fs~ g~ b~>8 <fs g b>2 |
  <e g b d'>1
  \bar "||"
}

\include "include/dual.ly"

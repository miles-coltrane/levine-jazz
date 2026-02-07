\version "2.24.4"
\include "include/prologue.ly"

% Easy Living, Ralph Rainger
theTempo = 80
theKey = c
theSignature = 4/4
theChords = \chordmode {
  f2:maj7 fs:dim | g:min7 gs:dim | f/a c4:min7 f:7.13- | bf1:maj7
}
theTreble = {
  <<
    {a'8 d'' c''}
    \new Voice {\voiceTwo e'4.}
  >> <a~ c'~ ef'~>8 <a c' ef'>2 |
  <<
    {b'8\rest d' g' bf' \stemUp \tuplet 3/2 {d''4 f''4 e''4} }
    \new Voice {\voiceTwo <f bf>2 <f' bf'>2 }
  >> |
  b'8 d''8 c''8
  <<
    {\tieUp
      f'8~ f'2~ |
      f'2
    }
    \new Voice {\voiceTwo
      <bf~ d'~>8 <bf d'>4 <a df'>4 |
      <g c'>2
    }
  >>
  \bar "||"
}
theBass = {
  <f, c>4. fs,8~ fs,2 |
  g,2 gs,2 |
  <a, f>4. <c~ ef~ g~>8 <c ef g>4 <f, ef>4 <bf, d>2
  \bar "||"
}

\include "include/dual.ly"

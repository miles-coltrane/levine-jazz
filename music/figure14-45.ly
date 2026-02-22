\version "2.24.4"
\include "include/prologue.ly"

% I Hear A Rhapsody
theTempo = 140
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r2. |
  c1:min7 |
  f2:min7 bf2:7 |
  ef2:maj7 df2:7 |
  c2:7 c2:alt |
  f1:min7.5- |
  bf1:7 |
  ef1:6
}
theTreble =  {
  \partial 2. g'4 a'4 b'4
  \bar "||"
  <<
   {\stemUp\tieUp
     d''4 c''4 ef''2 |
     ef''2 d''2 |
    \tuplet 3/2 {bf'4 g'4 af'4} bf'2~
   }
   \new Voice {\voiceTwo
     <ef' g'>2 s2 |
     <ef' af'>2 <d' g'>2 |
     d'2 <cf' ef'>2
   }
  >> | \break
  <<
    { \stemUp
      bf'4 g'4 af'4 bf'4 |
      bf'4 af'4 cf''2
    }
    \new Voice {\voiceTwo
      <bf d'>2 <bf ef'>2 |
      <cf' ef'>1
    }
  >> |
  r4 d'4 d'4 d'4 |
  <<
    {\stemUp f'4 ef'4 ef'2}
    \new Voice {\voiceTwo <g c'>1}
  >>
  \bar "||"
}
theBass = {
  \partial 2. r4 r2 |
  <c bf>1 |
  f,2 <bf, af>2 | <ef g>2 <df f>2 | \break
  <c e>2 <c e>2 | f,1 | <bf, af>1 <ef, bf,>1
  \bar "||"
}

\include "include/dual-aligned.ly"

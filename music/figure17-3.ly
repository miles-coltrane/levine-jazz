\version "2.24.4"
\include "include/prologue.ly"

% Beatrice, Sam Rivers, Fuchsia Swing Song
theTempo = 120
theKey = f
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | gf1:maj7.11+ | f1:maj7 | ef:maj7 d:min7 |
  ef:maj7 | d:min7 | bf:min7 | a:min7 | bf:maj7 |
  e2:min7 a2:7 | d1:min7 | g1:min7 | gf1:maj7.11+ |
  f1:min7 | gf:maj7.11+
}
theTreble = {
  % TODO: get bar numbers visible
  \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers
  \override Score.SpacingSpanner.spacing-increment = 3.5
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  <<
    {\stemUp\tieUp\tupletUp
      r4 r8 c''8 c''4 c''4 |
      f''4 c''4 c''4 bf'4 |
      c''4. a'8 f'4 f'4 |
      f'4 g'2. |
      r4 r8 a'8 a'4 a'4
    }
    \new Voice {\voiceTwo
      <e' a'>1 |
      f'1
      e'1 |
      <g c'>1
      <c' f'>1
    }
  >> | \break

  <<
    {\stemUp\tieUp\tupletUp
      d''4 c''4 ef''4 g''4 |
      s2 f'2 |
      \tuplet 3/2 {c''8 bf'8 c''8~} c''2 bf'4 |
      a'2. c''4 |
      f''2. g''4
    }
    \new Voice {\voiceTwo
      g'1 |
      <f' c'' f''>2 s2 |
      <df' f'>1 |
      c'1
      <g' c''>1
    }
  >> | \break

  <<
    {\stemUp\tieUp\tupletUp
      a''1~
    }
    \new Voice {\voiceTwo
      <g' d''>2 cs''2
    }
  >> |
  \stemDown
  <f'' a''>2. <g' g''>4 |
  r8 <f' bf' f''>4. <f' bf' f''>4 <f' bf' f''>4 |
  <<
    {\stemUp\tieUp\tupletUp
      f''2~ f''8 c''8 bf'8 <ef'~ af'~ c''~>8
    }
    \new Voice {\voiceTwo
      <f' bf'>2. s4
    }
  >> | \break
  <ef' af' c''~>1 |
  <f' bf' c''>1
  \bar "||"
}
theBass = {
  f,1 | gf,1 | f,1  ef,1 | d,1 | \break
  ef,1 | d,1 | bf,,1 | <a,g>1 | <bf, a>1 |\break
  e2 <a, g>2 | <d c'>1 | r8 g,4. g,4 g,4 | gf,2.~ gf,8 f,8~ | \break
  f,1 | gf,1
  \bar "||"
}

\include "include/dual.ly"

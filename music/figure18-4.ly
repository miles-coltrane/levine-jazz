\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4

trebleIntro = {
  \partial 2. g'4 a'4 b'4
}
bassIntro = {
  \partial 2. r4 r2
}
chordsIntro = \chordmode {
  r2.
}

trebleA = {
  <<
    {\stemUp d''4 c''4 ef''2~}
    \new Voice {\voiceTwo <ef' g'>1 }
  >>|
  <ef' af' ef''>2 <d' g' b' d''>2 |
  <<
    {\stemUp
      \tuplet 3/2 {bf'4 g'4 af'4} bf'2 | \break
      r4 g'4 af'4 bf'4 |
      bf'4 af'8 cf''8~ cf''2 |
      r4 d'4 d'4 d'4 |
      f'4 ef'4 ef'2 | \break
    }
    \new Voice { \voiceTwo
      <c' f'>2 <cf' ef'>2 | \break
      <bf d'>2 <bf ef'>2 |
      ef'1 |
      s4 <af b>2. |
      <g c'>1
    }
  >>
}
bassA = {
  <<
    {b2 a2}
    \new Voice {\voiceTwo c1}
  >> |
  f,2 <bf, af>2 |
  <ef g>2 <df f>2 | \break
  <c e>2 <c e>2 |
  <f cf'>1 |
  bf,1 |
  <ef, bf,>1 | \break
}
chordsA = \chordmode {
  c1:maj7.3- |
  f2:min7 bf2:7.9- |
  ef2:maj7 df2:7.11+ |
  c2:7 c2:alt |
  f1:min7.5- |
  bf1:7.9- |
  ef1:maj7
}

trebleBOne = {
  <<
    {\stemUp
      r4 <c' e' g'>4 a'4 b'4
    }
    \new Voice {\voiceTwo
      s2 <b e'!>2
    }
  >>
}
bassBOne = {
  <<
    {\stemUp r4 <f a>4 s2}
    \new Voice {\voiceTwo d2 <g, f>2}
  >>
}
chordsBOne = \chordmode {
  d2:min7 g2:7
}

trebleBTwo = {
  <<
    {<c' ef'>1}
    \new Voice {\voiceTwo g2 fs2}
  >>
}
bassBTwo = {
  a,2 d,2
}
chordsBTwo = \chordmode {
  a2:min7.5- d2:7.9-
}

trebleC = {
  <<
    {\stemUp\tieUp
      r4 d'4 d'4 d'4 |
      <c' ef'>2. c'4 | \break
      ef'4 d'4 d'2~ |
      d'1 |
      r4 f'4 f'4 f'4 |
      af'2. f'4 | \break
      c''4 b'4 b'2 |
      r4 g'4 a'4 b'4
    }
    \new Voice {\voiceTwo
      s4 <a bf>2. |
      g2 fs2 | \break
      <fs c'>2 <a bf>2 |
      <g bf>2 <fs a>2 |
      s4 <g c'>2. |
      <c' d'>1 | \breal
      f'1 |
      s4 <b e'>2.
    }
  >>
}
bassC = {
  <<
    {\stemUp r4 e2.}
    \new Voice {\voiceTwo g,1}
  >> |
  a,2 d,2 | \break
  d,2 <g, e>2 |
  <c ef>2 <f, ef>2 |
  <<
    {\stemUp r4 d2.}
    \new Voice {\voiceTwo bf,1}
  >> |
  f,1 | \break
  <d c'>1 |
  <<
    {\stemUp r4 f2.}
    \new Voice {\voiceTwo g,1}
  >> |
}
chordsC = \chordmode {
  g1:min6 | a2:min7.5- d2:7.9- |
  d2:7.9- g2:min6 | c2:min7 f2:7.9- | bf1:maj7 | f1:min6 |
  d1:min7 | g1:7
}

trebleCoda = { r1 }
bassCoda = { r1 }
chordsCoda = \chordmode { r1 }

theChords = {
  \chordsIntro
  \repeat volta 2 {
    \chordsA
    \alternative {
      \volta 1 { \chordsBOne }
      \volta 2 { \chordsBTwo }
    }
  }
  \chordsC
  \chordsCoda
}

theTreble = {
  \trebleIntro |
  \segnoMark 1
  \repeat volta 2 { \bar ".|:"
    \trebleA |
    \codaMark 1
    \alternative {
      \volta 1 { \trebleBOne }
      \volta 2 { \trebleBTwo }
    }
  }
  \bar "||"
  \trebleC
  \bar "||"

  {
    \set Score.currentBarNumber = #-1
    \stopStaff
    s4^\markup\left-align{"D.S. al CODA"} s2.
    \startStaff
  } |
  \set Score.currentBarNumber = #18
  \codaMark 1
  \trebleCoda \bar "|."
}
theBass = {
  \bassIntro |
  \segnoMark 1
  \repeat volta 2 { \bar ".|:"
    \bassA |
    \codaMark 1
    \alternative {
      \volta 1 { \bassBOne }
      \volta 2 { \bassBTwo }
    }
  }
  \bar "||"
  \bassC
  \bar "||"

  {
    \set Score.currentBarNumber = #-1
    \stopStaff
    s1
    \startStaff
  } |
  \set Score.currentBarNumber = #18
  \codaMark 1
  \bassCoda \bar "|."
}

expandedTreble = {
  \trebleIntro
  \trebleA
  \trebleBOne
  \trebleA
  \trebleBTwo
  \trebleC
  \trebleA
  \trebleCoda
}
expandedBass = {
  \bassIntro
  \bassA
  \bassBOne
  \bassA
  \bassBTwo
  \bassC
  \bassA
  \bassCoda
}


\score {
  \midi {
    \tempo 4=\theTempo
  }
  \new GrandStaff <<
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \expandedTreble
      }
    }
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \expandedBass
      }
    }
  >>
}

\score {
  \layout {
    \context {
      \Score
    }
    indent = 0\mm
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      \theChords
    }
    \new Staff {
      \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \theTreble
      }
    }
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \theBass
      }
    }
  >>
}

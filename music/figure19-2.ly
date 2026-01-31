\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4

trebleIntro = {
  \partial 2 b'2
}
chordsIntro = \chordmode {
  g2:7.9-
}

trebleA = {
  \tupletUp
  c''1 |
  \tuplet 3/2 {c''4 bf'4 af'4} \tuplet 3/2 {g'4 f'4 e'4} |
  ef'1 | \break
  r8 d'8 ef'8 d'8 cs'4 d'4 |
  g'1 |
  \tuplet 3/2 {f'4 g'4 f'4} ef'4. b8 |
  d'8 c'8 c'8 c'8~ c'2 | \break
}
chordsA = \chordmode {
  c1:maj7 | bf2:min7 ef2:7 | af1:maj7 |
  d2:min7.5- g2:7 | c1:min |d2:min7.5- g2:alt c1:maj7
}

trebleBOne = {
  r2 b'2
}
chordsBOne = \chordmode {
  d2:min7 g2:7.9-
}

trebleBTwo = {
  r2 e''2
}
chordsBTwo = \chordmode {
  g2:min7 c2:7.9-
}

trebleC = {
  \tupletUp
  f''1 |
  \tuplet 3/2 {f''4 ef''4 df''4} \tuplet 3/2 {c''4 bf'4 a'4} | \break
  af'1 |
  r8 g'8 af'8 g'8 fs'4 g'4 |
  c''1 |
  \tuplet 3/2 {bf'4 c''4 bf'4} af'4. e'8 | \break
  g'8 f'8 f'8 f'8~ f'2|
  af'8 g'8 g'8 g'8~ g'4 b'4
}

chordsC = \chordmode {
  f1:maj7 | ef2:min7 af2:7 |
  df1:maj7 | g2:min7.5- c2:7 | f1:min g2:min7.5- | c2:alt |
  f1:maj7 | d2:min7.5- g2:7.9-
}

trebleCoda = {
  r1
}
chordsCoda = \chordmode {
  r1
}

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

expandedChords = {
  \chordsIntro
  \chordsA
  \chordsBOne
  \chordsA
  \chordsBTwo
  \chordsC
  \chordsA
  \chordsCoda
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


\score {
  \midi {
    \tempo 4=\theTempo
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \ppp % spacer to set voice volume
      \expandedChords
    }
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \fff % spacer to set voice volume
        \expandedTreble
      }
    }
    >>
  }
}

\score {
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
    ragged-last = ##f
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \ppp % spacer to set voice volume
      \theChords
    }
    \new Staff {
      \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \fff % spacer to set voice volume
        \theTreble
      }
    }
    >>
  }
}

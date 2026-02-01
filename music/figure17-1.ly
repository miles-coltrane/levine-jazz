\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4

trebleIntro = {
  \partial 2. g'4 a'4 b'4
}
chordsIntro = \chordmode {
  r2.
}

trebleA = {
  \tupletUp
  d''4 c''4 ef''2~ |
  ef''2 d''2 |
  \tuplet 3/2 {bf'4 g'4 af'4} bf'2 | \break

  r4 g'4 af'4 bf'4 |
  bf'4 af'8 cf''8~ cf''2 |
  r4 d'4 d'4 d'4 |
  f'4 ef'4 ef'2 | \break
}
chordsA = \chordmode {
  c1:min7 | f2:min7 bf2:7|  ef2:maj7 df2:7.11+ |
  c2:7 c2:alt | f1:min7.5- | bf1:7 | ef1:7
}

trebleBOne = {
  r4 g'4 a'4 b'4
}
chordsBOne = \chordmode {
  d2:min7 g2:7
}

trebleBTwo = {
  r1
}
chordsBTwo = \chordmode {
  a2:min7.5- d2:7
}

trebleC = {
  \tupletUp
  r4 d'4 d'4 d'4 |
  ef'2. c'4 | \break

  ef'4 d'4 d'2~ |
  d'1 |
  r4 f'4 f'4 f'4 |
  af'2. f'4 | \break

  c''4 b'4 b'2 |
  r4 g'4 a'4 b'4 \bar "||"
  d''4 c''4 ef''2~ |
  ef''2 d''2 | \break

  \tuplet 3/2 {bf'4 g'4 af'4} bf'2 |
  r4 g'4 af'4 bf'4 |
  bf'4 af'8 cf''8~ cf''2 |
  r4 d'4 d'4 d'4 |\break
  f'4 ef'4 ef'2~ |
  ef'1
}

chordsC = \chordmode {
  f1:min | a2:min7.5- d2:7.9- |
  g1:min | c2:min7 f2:7 | bf1 | f1:min |
  d1:min7.5- g1:7 | c1:min7 f2:min7 bf2:7 |
  ef2:maj7 df2:7.11+ | c2:7 c2:alt | f1:min7.5- | bf1:7 |
  ef1:maj7 | r1
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
}

theTreble = {
  \trebleIntro |
  \repeat volta 2 { \bar ".|:"
    \trebleA |
    \alternative {
      \volta 1 { \trebleBOne }
      \volta 2 { \trebleBTwo }
    }
  }
  \bar "||"
  \trebleC
  \bar "|."
}

expandedChords = {
  \chordsIntro
  \chordsA
  \chordsBOne
  \chordsA
  \chordsBTwo
  \chordsC
}

expandedTreble = {
  \trebleIntro
  \trebleA
  \trebleBOne
  \trebleA
  \trebleBTwo
  \trebleC
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
    ragged-last = ##t
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
      \override Score.SpacingSpanner.spacing-increment = 3.3
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

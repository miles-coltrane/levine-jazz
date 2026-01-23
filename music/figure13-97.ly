\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = ef
theSignature = 4/4

chordsA = \chordmode {
  c1:min7 | f2:min7 bf2:7 | ef2:maj7 df2:7 | c1:7 | \break
  f1:min7.5- | bf1:7 | ef1:maj7 |
}
trebleA = {
  s1 | s | s | s | \break
  s | s | s |
}
chordsBOne = \chordmode { d2:min7 g2:7 }
trebleBOne = { s1 }
chordsBTwo = \chordmode { a2:min7 d2:7 }
trebleBTwo = { s1 }
chordsC = \chordmode {
  g1:min | a2:min7.5- d2:7.9- | g1:min | c2:min7 f2:7 | \break
  bf1:maj7 | f1:min | d1:min7 | d2:min7 g2:7
}
trebleC = {
  s1 | s | s | s | \break
  s | s | s | s
}
chordsCoda = \chordmode { d2:min7 g2:7}
trebleCoda = { s1}

theChords = \chordmode {
  \repeat volta 2 { \bar ".|:"
    \chordsA
    \codaMark 1
    \alternative {
      \volta 1 { \chordsBOne }
      \volta 2 { \chordsBTwo }
    }
  } \bar "||" \break
  \chordsC
  \bar "||"

  {
    \set Score.currentBarNumber = #-1
    \stopStaff
    s1
    \startStaff
  } |
  \chordsCoda \bar "|."
}
expandedChords = \chordmode {
  \chordsA
  \chordsBOne
  \chordsA
  \chordsBTwo
  \chordsC
  \chordsA
  \chordsCoda
}

theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2.8
  \repeat volta 2 { \bar ".|:"
    \trebleA
    \alternative {
      \volta 1 { \trebleBOne }
      \volta 2 { \trebleBTwo }
    }
  } \bar "||" \break
  \trebleC
  \bar "||"

  {
    \set Score.currentBarNumber = #-1
    \stopStaff
    s4^\markup\left-align{"D.C. al CODA"} s2. |
    \startStaff
  }
  % TODO: get coda mark and bar line onto next line
  \set Score.currentBarNumber = #18
  \codaMark 1
  \trebleCoda \bar "|."
}
expandedTreble = {
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
      \set chordNameExceptions = #chordsExceptions
      \skip \ff % spacer to set voice volume
      \expandedChords
    }
    \new Staff {
      \key \theKey \major
      \clef treble {
        \skip \f % spacer to set voice volume
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

\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    \context {
      \Voice
      \consists Horizontal_bracket_engraver
    }
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
      \clef bass {
        \sectionLabel \theLabel
        \skip \fff % spacer to set voice volume
        \theTreble
      }
    }
    >>
  }
}

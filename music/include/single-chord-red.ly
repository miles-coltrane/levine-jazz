\score {
  \midi {
    \tempo 4=120
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
      \applyContext #(override-color-for-all-grobs (x11-color 'red))
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
      \theNotes
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \override Timing.TimeSignature.stencil = ##f
      \time 5/4
      \clef treble {
        \skip \fff % spacer to set voice volume
         \theNotes_\markup\center-align{\theSpelling}
      }
    }
  >>
}

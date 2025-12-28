% Dual staff with lyrics below treble staff, all aligned
\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
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
    <<
      \new Staff {
        \key \theKey \major
        \numericTimeSignature
        \time \theSignature
        \clef treble {
          \skip \f % spacer to set voice volume
          \theTreble
        }
      }
      \new Lyrics {
        \theLyrics
      }
    >>
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \theBass
      }
    }
  >>
}

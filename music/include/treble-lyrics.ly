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
    \new Lyrics { \theLyrics }
    >>
  }
}

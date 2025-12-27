\score {
  \midi {
    \tempo 4=120
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \ppp % spacer to set voice volume
      \theChordsA
      \theChordsB
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \override Timing.TimeSignature.stencil = ##f
      \override Score.SpacingSpanner.spacing-increment = 4
      \time 9/4
      \clef treble {
        \skip \fff % spacer to set voice volume
        \theTrebleA ^\markup\center-align{\theModeA}
        \bar "||" \break
        \theTrebleB ^\markup\center-align{\theModeB}
        \bar "||" \break
      }
      \addlyrics {
        \theLyricsA
        \theLyricsB
      }
    }
    >>
  }
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/chords.ly"
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
    \new Staff \with { instrumentName = "soloist" } {
      \set Staff.midiInstrument = "trumpet"
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \skip \ffff
        fs'1
        \bar "||"
      }
    }
    \new PianoStaff \with { instrumentName = "pianist" } <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      df1:maj7.11+
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \skip \f % spacer to set voice volume
        <f g bf ef'>1
        \bar "||"
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        df,1
        \bar "||"
      }
    }
    >>
    >>
  }
}

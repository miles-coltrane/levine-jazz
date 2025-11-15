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
    \new PianoStaff \with { instrumentName = \markup\left-column{"Herbie" "Hancock"} } <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      ds2.:sus7.9- | r |
      fs:sus7 | r
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble {
        \skip \f % spacer to set voice volume
        \relative {
          \tuplet 3/2 {as''8 b as}
          \tuplet 3/2 {gs as b}
          \tuplet 3/2 {as gs as} |
          \tuplet 3/2 {b as gs}
          \tuplet 3/2 {as b as}
          \tuplet 3/2 {gs as b} | \break
          \tuplet 3/2 {as gs as}
          \tuplet 3/2 {b as gs}
          \tuplet 3/2 {as b as}|
          \tuplet 3/2 {gs as b}
          \tuplet 3/2 {as gs as}
          \tuplet 3/2 {b as gs}
        }
        \bar "||"
      }
    }
    \new Staff {
      \clef treble {
        \skip \f % spacer to set voice volume
        <ds' e' gs'>2
        <ds' e' gs'>8
        <ds'~ e'~ gs'~>8 |
        <ds' e' gs'>4.
        <ds' e' gs'>4. | \break
        <b ds' e' gs'>4
        <ds' e' gs' b'>4
        <b ds' e' gs'>4 |
        <c' ds' e' gs'>4
        <b ds' e' gs'>4
        <as ds' e' gs'>4
        \bar "||"
      }
    }
    >>
    \new Staff \with { instrumentName = \markup\left-column{"Ron" "Carter"} } {
      \set Staff.midiInstrument = "acoustic bass"
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef bass {
        ds,2. | ds,2. | \break
        fs,4. cs,4. | fs,,2.
      }
    }
    >>
  }
}

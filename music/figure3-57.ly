\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
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
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      c1:min | c:min6- | c:min6 | c1:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          r4 ef''8. c16 ef8 c4. |
          r4 ef8. c16 ef8 c4. |
          r4 ef8. c16 ef8 c4. |
          r4 ef8. c16 ef8 c4.
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        <c~ ef~ g>1 |
        <c~ ef~ af>1 |
        <c ef a>1 |
        <c e bf>1 |
        \bar "||"
      }
    }
  >>
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/sus.ly"
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
      r4 | d1:sus9-
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          d'8 ef | g4 a8 ef8 r8 g a c |
          d4 ef8 d r8 c4 a8 |
          g4 c8 a8~ a2
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        \partial4 r4 |
        <d~ ef~ f~ a~>1 |
        <d~ ef~ f~ a~>1 |
        <d ef f a>1 |
        \bar "||"
      }
    }
  >>
}

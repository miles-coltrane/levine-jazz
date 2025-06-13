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
      d\breve:sus
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <g c e g>4
          <g~ c~ e~ g~>4
          <g c e g>8
          <g~ c~ e~ g~>4. |
          <g c e g>4.
          <g~ c~ e~ g~>8
          <g c e g>2
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          <d, d'>4
          <d~ d'~>4
          <d d'>8
          <d~ d'~>4. |
          <d d'>4.
          <d~ d'~>8
          <d d'>8 a' d a
          \bar "||"
        }
      }
    }
  >>
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/sus.ly"
\include "include/thirds.ly"
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
      \set chordNameExceptions = #susExceptions
      g2:sus7 g:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \set fingeringOrientations = #'(right)
          <c'\fourth f a>2  <b\third f' a>2
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        g,2 g,2
        \bar "||"
      }
    }
  >>
}

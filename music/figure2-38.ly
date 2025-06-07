\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/box-head.ly"
\include "include/thirds.ly"
\score {
  \midi {
    \tempo 4=140
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
      \override SpacingSpanner.spacing-increment = 4
    }
    indent = 0\mm
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      r\breve | b1:min7.5-
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \fff % spacer to set voice volume
        \sectionLabel \markup { "           B Locrian mode" }
        \boxHead b4
        c
        \boxHead d
        e
        \boxHead f
        g
        \boxHead a
        b
        <b,-\root d-\third f-\fifth a-\seventh>1
        \bar "||"
      }
      \addlyrics {
        root "2nd" "3rd" "4th" "5th" "6th" "7th" "octave" "VII"
      }
    }
    >>
  }
}

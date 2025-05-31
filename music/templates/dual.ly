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
  }
  {
    <<
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \pppp % to prevent named chords sounding
      % CHORD NAMES HERE
    }
    \new Staff {
      \sectionLabel "Figure X-Y"
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          % TREBLE CLEF HERE
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        {
          \skip \f % spacer to set voice volume
          % BASS CLEF HERE
          \bar "||"
        }
      }
    }
    >>
  }
}

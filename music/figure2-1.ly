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
  {
    <<
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \pppp % to prevent named chords sounding
      r4 | f1:min7 | bf:7 | ef:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4 f'4 |
          \tieUp <af, ef' g~>1 |
          <<
            { g'4 f4 f4 g4 }
            \new Voice { \voiceTwo <c, d>1 }
          >> |
          <f, g bf> 1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4 r4 | f,1 | <bf' af,> | ef,,
          \bar "||"
        }
      }
    }
    >>
  }
}

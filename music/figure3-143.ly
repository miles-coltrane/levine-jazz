\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
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
      c1:aug7 | cs1:aug7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          d''16 e fs d e c d bf fs gs e8 r8 a16 b |
          cs16 a f g a4 r2 |
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        {
          \skip \ff
          <c e gs bf>2. r4 |
          <cs es a b>1 |
          \bar "||"
        }
      }
    }
    >>
  }
}

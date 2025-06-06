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
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      ef2:maj7 f4:min7 g4:min7 | af4.:min7 r8 df2:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          r8 <g d' g>4. <af ef' af>4 <bf f' bf>4 |
          <cf gf' bf>4. <cf~ ef~ af~>8 <cf ef af>2
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          r8 ef,4. f4 g4 | <af gf'>4. <df~ f~>8 <df f>2
          \bar "||"
        }
      }
    }
    >>
  }
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
third = \finger\markup{\override #'(font-name . "sans")"3rd"}
seventh = \finger\markup{\override #'(font-name . "sans")"7th"}
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
      \set midiMaximumVolume = #0 % prevent named chords sounding
      ef2:min7 af:7| b4:min7 e:7 bf:min7 ef:7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \override Fingering.staff-padding = #'()
          \set fingeringOrientations = #'(right)
          <df'\seventh gf>4
          ef16 gf bf  ef\seventh
          <
            c,\third f c'\third
          >4. fs8 |
          <d a'\seventh>4
          <d gs\third>
          <df af'\seventh>
          <df g\third>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          ef,2 <af gf'> |
          b4 e bf ef
          \bar "||"
        }
      }
    }
    >>
  }
}

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
      d2:min7 g:7 | c1:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          % TODO: straight lines rather than slurs
          % TODO: align chord numbers
          \override Fingering.staff-padding = #'()
          \set fingeringOrientations = #'(left)
          <f' c'\(-\seventh>2
          \set fingeringOrientations = #'(up left)
          < f\(\seventh b\)\third >2 |
          \set fingeringOrientations = #'(right)
          <e\)\third b'>1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          d,2-\markup{II} g2-\markup{V} |
          c,1-\markup{I}
          \bar "||"
        }
      }
    }
    >>
  }
}

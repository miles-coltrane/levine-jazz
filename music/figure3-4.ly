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
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      d1:min7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \set fingeringOrientations = #'(right)
          <
            e'\finger\markup{\override #'(font-name . "sans")"9th"}
            g\finger\markup{\override #'(font-name . "sans")"11th"}
            b\finger\markup{\override #'(font-name . "sans")"13th"}
          >1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          \set fingeringOrientations = #'(right)
          <
            d\finger\markup{\override #'(font-name . "sans")"root"}
            f\finger\markup{\override #'(font-name . "sans")"3rd"}
            a\finger\markup{\override #'(font-name . "sans")"5th"}
            c\finger\markup{\override #'(font-name . "sans")"7th"}
          >1
          \bar "||"
        }
      }
    }
  >>
}

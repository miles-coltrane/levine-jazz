\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
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
          \override Fingering.staff-padding = #'()
          \set fingeringOrientations = #'(left)
          \set glissandoMap = #'((1 . 1))
          <f' c'-\seventh>2\glissando
          \set fingeringOrientations = #'(up left)
          \set glissandoMap = #'((0 . 0))
          <f\seventh b\third >2\glissando |
          \set fingeringOrientations = #'(right)
          <e\third b'>1
          \bar "||"
        }
      }
    }
    \new Staff {
      <<
        \clef bass {
          \relative {
            \skip \f % spacer to set voice volume
            d,2 g2 | c,1
            \bar "||"
          }
        }
        \addlyrics {
          II V I
        }
      >>
    }
  >>
}

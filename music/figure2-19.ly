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
      g2:min7 c:7 | af:min7 df:7 |
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
          <f'\seventh bf c~>2
          <<
            { c'8 c8 \tuplet 3/2 {c8 f8 c8} }
            \new Voice { \voiceTwo e,2\third }
          >>
          |
          <<
            { <cf' df>1 }
            \new Voice { \voiceTwo gf2\seventh f\third}
          >>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          g,2 c | af df |
          \bar "||"
        }
      }
    }
    >>
  }
}

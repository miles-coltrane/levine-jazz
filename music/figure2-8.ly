\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=140
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
      \skip \ppp % spacer to set voice volume
      d1:min7 | r1 | r1
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \override Timing.TimeSignature.stencil = ##f
      \clef treble
      \relative {
        \set fingeringOrientations = #'(right)
        \skip \f % spacer to set voice volume
        <
          d'
          f\finger\markup{\override #'(font-name . "sans")"minor 3rd"}
          a
          c
        >1 |
        <
          d
          f
          a\finger\markup{\override #'(font-name . "sans")"perfect 5th"}
          c
        >1 |
        <
          d
          f
          a
          c\finger\markup{\override #'(font-name . "sans")"minor 7th"}
        >1 |
        \bar "||"
      }
    }
    >>
  }
}

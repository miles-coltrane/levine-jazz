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
      c1:maj7 | r1 | r1
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
          c'
          e\finger\markup{\override #'(font-name . "sans")"major 3rd"}
          g
          b
        >1
        <
          c
          e
          g\finger\markup{\override #'(font-name . "sans")"perfect 5th"}
          b
        >1 |
        <
          c
          e
          g
          b\finger\markup{\override #'(font-name . "sans")"major 7th"}
        >1 |
        \bar "||"
      }
    }
    >>
  }
}

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
  }
  {
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \clef treble
      {
        \sectionLabel "perfect 4th"
        \skip \f % spacer to set voice volume
        < c' f' >1 |
        \sectionLabel "perfect 5th"
        < f' c'' >
        \bar "||"
      }
    }
  }
}

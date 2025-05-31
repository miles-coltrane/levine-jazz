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
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \clef treble
      {
        \skip \f % spacer to set voice volume
        \sectionLabel "root position"
        < c' e' g' >1 \bar "||"
        \sectionLabel "first inversion"
        < e' g' c'' >1 \bar "||"
        \sectionLabel "second inversion"
        < g' c'' e'' >1 \bar "||"
      } \break
      {
        \skip \f % spacer to set voice volume
        \sectionLabel "root position"
        < c' ef' g' >1 \bar "||"
        \sectionLabel "first inversion"
        < ef' g' c'' >1 \bar "||"
        \sectionLabel "second inversion"
        < g' c'' ef'' >1 \bar "||"
      } \break
    }
  }
}

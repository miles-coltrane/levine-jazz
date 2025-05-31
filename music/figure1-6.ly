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
        \skip \f % spacer to set voice volume
        \sectionLabel "C major triad"
        < c' e' g' >1 \bar "||"
        \sectionLabel "C minor triad"
        < c' ef' g' >1 \bar "||"
        \sectionLabel "C diminished triad"
        < c' ef' gf' >1 \bar "||"
        \sectionLabel "C augmented triad"
        < c' e' gs' >1 \bar "||"
      }
    }
  }
}

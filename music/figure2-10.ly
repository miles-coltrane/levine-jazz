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
      g1:7 | r1 | r1
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \override Timing.TimeSignature.stencil = ##f
      \clef treble
      \relative {
        \skip \f % spacer to set voice volume
        <g' b d f>1 | % TODO: add interval annotation G->B : major 3rd
        <g b d f>1 | % TODO: add interval annotation G->D : perfect 5th
        <g b d f>1 | % TODO: add interval annotation G->F : minor 7th
        \bar "||"
      }
    }
    >>
  }
}

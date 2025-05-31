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
        \skip \f % spacer to set voice volume
        <d' f a c>1 | % TODO: add interval annotation D->F : minor 3rd
        <d f a c>1 | % TODO: add interval annotation D->A : perfect 5th
        <d f a c>1 | % TODO: add interval annotation D->C : minor 7th
        \bar "||"
      }
    }
    >>
  }
}

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
        \skip \f % spacer to set voice volume
        <c' e g b>1 | % TODO: add interval annotation C->E : major 3rd
        <c e g b>1 | % TODO: add interval annotation C->G : perfect 5th
        <c e g b>1 | % TODO: add interval annotation C->B : major 7th
        \bar "||"
      }
    }
    >>
  }
}

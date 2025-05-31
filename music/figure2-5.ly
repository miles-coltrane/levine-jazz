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
      \override SpacingSpanner.spacing-increment = 4
    }
    indent = 0\mm
  }
  {
    <<
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      r\breve | c1:maj7
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \f % spacer to set voice volume
        \sectionLabel \markup \right-align { "C Ionian mode" }
        c'4-\markup { root }
        d-\markup { 2nd }
        e-\markup { 3rd }
        f-\markup { 4th }
        g-\markup { 5th }
        a-\markup { 6th }
        b-\markup { 7th }
        c-\markup { octave } |
        <c, e g b>1
        \bar "||"
      }
    }
    >>
  }
}

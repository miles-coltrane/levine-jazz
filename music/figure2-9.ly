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
      r\breve | g1:7
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \f % spacer to set voice volume
        \sectionLabel \markup \right-align { "G Mixolydian mode" }
        % TODO: add boxes around 1/3/5/7
        g'4-\markup { root }
        a-\markup { 2nd }
        b-\markup { 3rd }
        c-\markup { 4th }
        d-\markup { 5th }
        e-\markup { 6th }
        f-\markup { 7th }
        g-\markup { octave } |
        <g, b d f>1
        \bar "||"
      }
    }
    >>
  }
}

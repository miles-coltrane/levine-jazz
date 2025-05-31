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
      r\breve | d1:min7
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \f % spacer to set voice volume
        \sectionLabel \markup \right-align { "D Dorian mode" }
        % TODO: add boxes around 1/3/5/7
        d'4-\markup { root }
        e-\markup { 2nd }
        f-\markup { 3rd }
        g-\markup { 4th }
        a-\markup { 5th }
        b-\markup { 6th }
        c-\markup { 7th }
        d-\markup { octave } |
        <d, f a c>1
        \bar "||"
      }
    }
    >>
  }
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\score {
  \midi {
    \tempo 4=120
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
  }
  {
    <<
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      b1:aug7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <f' a>8 <g b>4 <a cs>4 <b es>8 |
          <df f>8 <ef g>8~ <ef g>2 |
          <a, cs>8 <b ds>4 <df f>4 <ef g>8 |
          <f a>4 <g b>2 |
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        {
          \skip \ff
          <b, ds a>2.~ |
          <b, ds a>2. |
          <b, ds a>2.~ |
          <b, ds a>2. |
          \bar "||"
        }
      }
    }
    >>
  }
}

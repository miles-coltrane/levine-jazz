\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=120
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
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      c4.:maj7 c8:maj7 d8:min7 e4:min7 f8:maj7 | f4:maj7 e:min7 d:min7 c:maj7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <b e>4. <b e>8 <c f>8 <d g>4 <e~ a~>8 |
          <e a>4 <d g> <c f> <b e>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          c,4. c8 d8 e4 f8~ | f4 e d c|
          \bar "||"
        }
      }
    }
    \addlyrics {
     I " " II III IV III II I
    }
    >>
  }
}

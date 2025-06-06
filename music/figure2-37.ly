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
      bf2:maj7 ef:7 | a1:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <<
           { \stemUp c''8 c c c~ c bf g }
           \new Voice { \voiceTwo <d f>4. <df~ f~>8 <df f>4. }
          >> <cs~ fs~ a~>8 |
          <cs fs a>1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          % BASS CLEF HERE
          <bf, af'>4. <ef~ g~>8 <ef g>4. <a,~ g'~>8 | <a g'>1
          \bar "||"
        }
      }
    }
    >>
  }
}

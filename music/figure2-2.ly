\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
% Tune Up, Miles Davis, Cookin'
\score {
  \midi {
    \tempo 4=300
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
  }
  \new GrandStaff <<
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      e1:min7 | a:7 | d:maj7 | r
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <<
            { \voiceOne d'1 }
            \new Voice { \voiceTwo \stemUp a'2. \stemUp g4 }
          >> |
          <g, cs ds >2 e'2 |
          <cs~ fs~> 1 |
          <cs fs>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          e,1 | a | <a~ d,~> | <a d,>
          \bar "||"
        }
      }
    }
  >>
}

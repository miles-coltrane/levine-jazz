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
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      d2:min7 g:7 | e4:min7 a:7 d:min7 g:7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <<
            {
              \stemDown c'2 b4. <g~ d'~>8 |
              <g d'>4 <g c> <f c'> <f b>
            }
            \new Voice { \voiceTwo
              \stemUp c''4 a4 f8 e d \tieUp g~ |
              g1
            }
          >>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          d,2 <g f'>4. e8~ |
          e4 a d, g |
          \bar "||"
        }
      }
    }
    \addlyrics {
      II V "    III" VI II V
    }
  >>
}

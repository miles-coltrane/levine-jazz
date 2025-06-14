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
      r8 | e:sus9-
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 8 r8 |
          \repeat volta 2 {
            r4 <f a b e>4 r8 <f a b e>4 r8 |
            r8 <f a b e>4 r8 r4 <f a b e>4
          }
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        \partial 8 b,8 |
        e,4. b,8~b,4. d8~ |
        d4. e8 e4. b,8 |
      }
    }
  >>
}

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
    ragged-last = ##t
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      a1:min | a:min6- | a1:min | a:min6- | a1:min
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
             \stemUp
             e''4 f8 e8~ e4.d8~ |
             d4 e4 d2 |
             c4 d8 c8~ c4. b8~ |\break
             b4. c8 b4. g8
           }
           \new Voice { \voiceTwo
           <b~ c~>2. <b c>8 <f~ a~>8 |
           <f a>1 |
           e2.~ e8 <d~ f~>8 | \break
           <d f>1
           }
          >> |
          <b c e>1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        <a,~ e~>2. <a, e>8 <a,~ f~>8 |
        <a, f>1 |
        <a,~ e~>2. <a, e>8 <a,~ f~>8 | \break
        <a, f>1 |
        <a, e>1
        \bar "||"
      }
    }
  >>
}

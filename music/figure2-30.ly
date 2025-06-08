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
      d2:min7 g:7 | e4:7.9+ a:7 d:7.9+ g:7 |
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
              \stemUp c''4 a4 f8 e d \tieUp g~ |
              g4
            }
            \new Voice { \voiceTwo
              \stemDown <c, f>2 <a b>4. <gs~ d'~>8 |
              <gs d'>4
            }
          >>
          <g cs fs>4 <fs c' f> <f b e>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          d,2 <g f'>4. e8~ | e4 a d, g |
          \bar "||"
        }
      }
    }
    \addlyrics {
      II V
      \markup \left-column { "     III" "     V of " }
      \markup \left-column { "VI" "V of " }
      \markup \left-column { "II" "V of " }
      \markup \left-column { "V" "V" }
    }
  >>
}

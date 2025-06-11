\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/sus.ly"
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
      c2:maj7 g:sus | c:maj7 g:sus
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          r4 \tuplet 3/2 {e'8 f8 g8}
          <<
            { g4. g8 }
            \new Voice { \voiceTwo <a, c f>2}
          >> |
          <<
            { a'4 g2. }
            \new Voice {s2 \voiceTwo <a, c f>2 }
          >>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          c,2 g' | c, g'
          \bar "||"
        }
      }
    }
  >>
}

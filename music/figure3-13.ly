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
      d2:min7 g:7 | c:maj7 f:maj7 % TODO: want "FΔ ♯4"
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <c' f a>2 <b e a> |
          <<
            {\stemDown <b d e>2 <a b e>2}
            \new Voice { \voiceTwo \stemUp g'4 \tuplet 3/2 {e8 f8 g8} e2}
          >>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        d2 <g, f> | c f,
        \bar "||"
      }
    }
  >>
}

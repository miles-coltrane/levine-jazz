\version "2.24.4"
\include "include/prologue.ly"

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
    ragged-last = ##f
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      \chordmode {
        \set chordChanges = ##f % show chords even when unchanged
        g1:7.5+ |
        g1:7.5+ |
        g1:7.5+
      }
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \skip \f % spacer to set voice volume
        \relative {
          g'16 ef g b a f a cs b g b ds cs4 \bar "||" \break
          cs16 f, b c b ef, f b a df, ef a g4 \bar "||" \break
          \tuplet 3/2 { g8 b ds }
          \tuplet 3/2 { f cs a}
          \tuplet 3/2 { b ds g }
          \tuplet 3/2 { a f cs }
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        {
          <f a b cs'>1 \bar "||" \break
          <f a b cs'>1 \bar "||" \break
          <f a b cs'>1 \bar "||"
        }
      }
    }
  >>
}

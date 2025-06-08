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
      af2.:maj7 | gf2.:maj7 % TODO: want "A♭Δ ♯4" "G♭Δ ♯4"
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \tuplet 3/2 {d'8 bf'8 <c,~ d~ g~>8} <c d g>4.
          \once \override NoteHead.extra-spacing-width = #'(-3 . 3)
          bf8 |
          \tuplet 3/2 {c8 af'8 <bf,~ c~ f~>8} <bf c f>2 |
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        \tuplet 3/2 {r8 r8 af,8~} af,2 |
        \tuplet 3/2 {r8 r8 gf,8~} gf,2
        \bar "||"
      }
    }
    >>
  }
}

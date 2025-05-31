\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\score {
  \midi {
    \tempo 4=160
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
  }
  \new Staff {
    \key c \major
    \override Timing.TimeSignature.stencil = ##f
    \clef treble
    {
      \sectionLabel \markup \left-column {
        "minor 2nd"
        "half step"
      }
      <c' d-flat'>1 |
      \sectionLabel \markup \left-column {
        "major 2nd"
        "whole step"
      }
      <c' d'>1 |
      \sectionLabel "minor 3rd"
      <c' ef'>1 |
      \sectionLabel "major 3rd"
      <c' e'>1 | \break
      \sectionLabel "perfect 4th"
      <c' f'>1 |
      \sectionLabel \markup \left-column {
        "tritone"
        "augmented 4th"
        "diminished 5th"
      }
      <c' fs'>2
      <c' gf'>2 |
      \sectionLabel "perfect 5th"
      <c' g'>1 |
      \sectionLabel \markup \left-column {
        "minor 6th"
        "augmented 5th"
      }
      <c' af'>2
      <c' gs'>2 | \break
      \sectionLabel "major 6th"
      <c' a'>1 |
      \sectionLabel \markup \left-column {
        "minor 7th"
        "augmented 6th"
      }
      <c' bf'>2
      <c' as'>2 |
      \sectionLabel "major 7th"
      <c' b'>1 |
      \sectionLabel "octave"
      <c' c''>1
    }
  }
}

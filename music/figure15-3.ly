\version "2.24.4"
\include "include/prologue.ly"

\score {
  \midi {
    \tempo 4=160
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    \context {
      \Voice
      \consists Horizontal_bracket_engraver
    }
  }
  {
    \new Staff {
      \override Score.SpacingSpanner.spacing-increment = 4
      \key c \major
      \time 5/1
      \override Timing.TimeSignature.stencil = ##f
      \clef treble {
        \skip \ff % spacer to set voice volume
         % TODO: figure out how to do overlapping brackets
         % cf. https://stackoverflow.com/questions/45572579/lilypond-adjacent-analysis-brackets
         \override HorizontalBracket.direction = #UP
         \override HorizontalBracketText.text = "1/3 octave"
         b'1\startGroup

         \once\hide NoteHead \once\hide Stem \once\hide Accidental
         g'128\stopGroup

         g'1\startGroup
         \once\hide NoteHead \once\hide Stem \once\hide Accidental
         ef'128\stopGroup

         ef'1\startGroup
         b1\stopGroup
         \bar "||"
      }
    }
  }
}

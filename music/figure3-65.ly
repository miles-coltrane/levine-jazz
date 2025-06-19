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
      \key c \major
      \time 40/4
      \override Timing.TimeSignature.stencil = ##f
      \clef treble {
        \skip \ff % spacer to set voice volume
         % TODO: figure out how to do overlapping brackets
         % cf. https://stackoverflow.com/questions/45572579/lilypond-adjacent-analysis-brackets
         \once\override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "perfect 4th"
         c'1\startGroup
         d'
         ef'
         f'\stopGroup
         \once\override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "perfect 4th"
         g'\startGroup
         a'
         b'
         c''\stopGroup
         d''
         ef''
         \bar "||"
      }
    }
  }
}

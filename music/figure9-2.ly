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
      \time 21/4
      \override Timing.TimeSignature.stencil = ##f
      \clef treble {
        \skip \ff % spacer to set voice volume

         % TODO: figure out how to do overlapping brackets
         % cf. https://stackoverflow.com/questions/45572579/lilypond-adjacent-analysis-brackets

         \once\override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "whole step"
         c'1\startGroup
         \once\hide NoteHead \once\hide Stem
         d'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "whole step"
         d'1\startGroup
         \once\hide NoteHead \once\hide Stem
         d'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "minor 3rd"
         e'1\startGroup
         \once\hide NoteHead \once\hide Stem
         g'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "whole step"
         g'1\startGroup
         \once\hide NoteHead \once\hide Stem
         a'128\stopGroup
         a'1\startGroup
         ^\markup\center-align{"C pentatonic scale"}
         \bar "||"
      }
    }
  }
}

\version "2.24.4"
\include "include/prologue.ly"

\score {
  \midi {
    \tempo 4=200
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
      \time 32/4
      \override Timing.TimeSignature.stencil = ##f
      \clef treble {
        \skip \ff % spacer to set voice volume

         % TODO: figure out how to do overlapping brackets
         % cf. https://stackoverflow.com/questions/45572579/lilypond-adjacent-analysis-brackets

         \once\override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "minor 3rd"
         c'1\startGroup
         \once\hide NoteHead \once\hide Stem \once\hide Accidental
         ef'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "whole step"
         ef'!1\startGroup
         \once\hide NoteHead \once\hide Stem
         f'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "half step"
         f'1\startGroup
         \once\hide NoteHead \once\hide Stem \once\hide Accidental
         fs'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "half step"
         fs'!1\startGroup
         \once\hide NoteHead \once\hide Stem
         g'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "minor 3rd"
         g'1\startGroup
         \once\hide NoteHead \once\hide Stem \once\hide Accidental
         bf'128\stopGroup

         \override HorizontalBracket.direction = #UP
         \once\override HorizontalBracketText.text = "whole step"
         bf'!1\startGroup
         \once\hide NoteHead \once\hide Stem
         c''128\stopGroup

         c''1\startGroup
         ^\markup\center-align{"C blues scale"}
         \bar "||"
      }
    }
  }
}

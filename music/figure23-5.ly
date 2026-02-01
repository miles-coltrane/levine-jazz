\version "2.24.4"
\include "include/prologue.ly"

\score {
  \midi {
    \tempo 4=180
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
      \time 8/4
      \override Timing.TimeSignature.stencil = ##f
      \override Score.SpacingSpanner.spacing-increment = 4
      \clef treble \relative {
        \skip \ff % spacer to set voice volume

        c'4 d ef f g
        \override HorizontalBracket.direction = #DOWN
        \once\override HorizontalBracketText.text = "minor 3rd"
        af\startGroup
        b\stopGroup
        c^\markup\center-align{"C harmonic minor scale"}
        \bar "||"
      }
    }
  }
}

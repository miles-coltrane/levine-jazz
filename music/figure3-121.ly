\version "2.24.4"
\include "include/prologue.ly"

theTempo = 160
theKey = c
theSignature = 32/4
theTreble = \relative {
  % TODO: figure out how to do overlapping brackets
  \override HorizontalBracket.direction = #UP
  \once\override HorizontalBracketText.text = "whole step"
  c'1\startGroup
  \once\override HorizontalBracketText.text = "whole step"
  d\stopGroup % \startGroup too
  \once\override HorizontalBracketText.text = "half-step"
  e\startGroup % \stopGroup too
  \once\override HorizontalBracketText.text = "whole step"
  f\stopGroup % \startGroup too
  \once\override HorizontalBracketText.text = "whole step"
  g\startGroup % \stopGroup too
  \once\override HorizontalBracketText.text = "whole step"
  a\stopGroup % \startGroup too
  \once\override HorizontalBracketText.text = "half-step"
  b\startGroup % \stopGroup too
  c\stopGroup
  \bar "||"
}

\score {
  \midi {
    \tempo 4=\theTempo
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
      \key \theKey \major
      \time \theSignature
      \override Timing.TimeSignature.stencil = ##f
      \clef treble {
        \skip \ff % spacer to set voice volume
        \theTreble
      }
    }
  }
}

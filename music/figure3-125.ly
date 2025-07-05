\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = c
theSignature = 4/4
theTreble = \relative {
  \override HorizontalBracket.direction = #UP
  \override HorizontalBracketText.text = \markup\left-column{\smaller "motif"}
  r8 b''\startGroup a d c\stopGroup
  \override HorizontalBracketText.text = \markup\left-column{\smaller "down a" \smaller "minor 3rd"}
  af\startGroup gf b | a\stopGroup
  f\startGroup ef af gf\stopGroup
  d\startGroup c f | ef\stopGroup
  b\startGroup a d c\stopGroup
  af\startGroup gf b | a\stopGroup
  f\startGroup ef af gf2\stopGroup
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
    indent = 0\mm
    ragged-last = ##t
    \context {
      \Voice
      \consists Horizontal_bracket_engraver
    }
  }
  {
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \ff % spacer to set voice volume
        \theTreble
      }
    }
  }
}

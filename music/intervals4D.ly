\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\score {
  \midi {
    \tempo 4=140
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
    <<
    \chords{
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      b2:maj7 d2:7 | g2:maj7 bf:7 | ef1:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "John Coltrane 'Giant Steps'"
        \relative {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "major 3rd"
          fs''2 \startGroup d \stopGroup |
          b2 g4. bf8~ |
          bf1
          \bar "||"
        }
      }
    }
    >>
  }
}

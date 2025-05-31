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
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      r8 | d2.:min7 | g:7 | d:min7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble
      {
        \sectionLabel "Woody Shaw 'In A Capricornian Way'"
        \relative {
          \skip \ff % spacer to set voice volume
          \partial 2 \partial 8
          \once\override HorizontalBracketText.text = "minor 6th"
          a'8 \startGroup \bar "||"
          f'2~ \stopGroup f8 a,8 |
          e'2 ~ e8 a,8 |
          f'2~ \tuplet 3/2 { f8 e8 d8  }
          \bar "||"
        }
      }
    }
    >>
  }
}

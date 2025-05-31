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
      \skip \ppp
      bf1:7 ef1:7 bf1:7
    }
    \new Staff {
      \key bf \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Thelonius Monk's 'Blue Monk'"
        {
          \skip \f % spacer to set voice volume
          \once\override HorizontalBracketText.text = "minor 2nd"
          d'8 \startGroup ef' \stopGroup e' f'~f'2 |
          g'8 af' a' bf'~ bf'2 |
          f'8 g' f' e' ef' c' cs' d'
          \bar "||"
        }
      }
    }
    >>
  }
}

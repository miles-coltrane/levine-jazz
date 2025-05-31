\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
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
      a1:min7 | c:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef bass
      {
        \sectionLabel "Joe Henderson 'Inner Urge' bar 15"
        \relative {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "minor 10th"
          a,4. \startGroup c'8 \stopGroup r8 a4 e8 |
          g8 a e c d4. c8
          \bar "||"
        }
      }
    }
    >>
  }
}

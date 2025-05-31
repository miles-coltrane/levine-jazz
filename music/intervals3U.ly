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
      r8 f1 e2:m7.5- a2:7 d1:min
    }
    \new Staff {
      \key f \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Charlie Parker 'Confirmation'"
        \relative {
          \skip \f % spacer to set voice volume
          \partial 8 c'8
          \bar "||"
          \once\override HorizontalBracketText.text = "minor 3rd"
          a'8 \startGroup c4 \stopGroup a8 bf a \tuplet 3/2 { e f fs } |
          g8 d' bf16 c bf g a8 cs,4 g'8 |
          r8 f4. r4 r8 a8
          \bar "||"
        }
      }
    }
    >>
  }
}

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
      r1 | d2:7 g4.:7 c8:min | r1
    }
    \new Staff {
      \key ef \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Duke Jordan 'Jordu'"
        \relative {
          \skip \ff % spacer to set voice volume
          r8
          \once\override HorizontalBracketText.text = "perfect 4th"
          g \startGroup c \stopGroup d ef f g ef \bar "||"
          fs2 f4. ef8 |
          r8 g, c d ef f g bf
          \bar "||"
        }
      }
    }
    >>
  }
}

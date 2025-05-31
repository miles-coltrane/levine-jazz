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
      a1:maj7 | ef:7 | bf:maj7 | a:7.11+
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Wayne Shorter 'Lady Day'"
        \relative {
          \skip \ff % spacer to set voice volume
          cs''1~ |
          cs2 r8
          \once\override HorizontalBracketText.text = "major 7th"
          c4 \startGroup df,8 \stopGroup |
          a'1~ | a2 r8 c4 df,8
          \bar "||"
        }
      }
    }
    >>
  }
}

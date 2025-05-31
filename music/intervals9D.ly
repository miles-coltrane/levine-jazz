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
      r8 | g2.:7 | r2.
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble
      {
        \sectionLabel "Miles Davis 'All Blues'"
        \relative {
          \skip \ff % spacer to set voice volume
          \partial 8 d'8 \bar "||"
          b'2~
          \once\override HorizontalBracketText.text = "major 6th"
          b8 \startGroup d,8 \stopGroup |
          \tuplet 3/2 {b'8 c8 b8~ } b4~ b8 d,8
          \bar "||"
        }
      }
    }
    >>
  }
}

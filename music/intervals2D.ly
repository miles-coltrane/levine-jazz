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
      e1:min7 | a1:7 | d1:maj7
    }
    \new Staff {
      \key d \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Miles Davis 'Tune-Up'"
        \relative {
          \skip \f % spacer to set voice volume
          \once\override HorizontalBracketText.text = "major 2nd"
          a'2. \startGroup g4 \stopGroup |
          ds2 e2 |
          fs1
          \bar "||"
        }
      }
    }
    >>
  }
}

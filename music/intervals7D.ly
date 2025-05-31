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
      r4. | g2.:min7 | f2.:7
    }
    \new Staff {
      \key bf \major
      \numericTimeSignature
      \time 3/4
      \clef treble
      {
        \sectionLabel "Woody Shaw 'Katrina Ballerina'"
        \relative {
          \skip \ff % spacer to set voice volume
          \partial 4. a'8~ \noBeam
          \once\override HorizontalBracketText.text = "perfect 5th"
          a8 \startGroup d,8 \stopGroup \bar "||"
          g8 d'8 r8 d4 c8 |
          d2~ \tuplet 3/2 { d8 c8 bf8 }
          \bar "||"
        }
      }
    }
    >>
  }
}

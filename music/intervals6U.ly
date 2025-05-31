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
      r8 | c1:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Joe Henderson 'Isotope'"
        \relative {
          \skip \f % spacer to set voice volume
          \once\override HorizontalBracketText.text = "tritone"
          \partial 8 c'8 \startGroup \bar "||"
          fs8 \stopGroup g4 c8 r8 c,4.
          \bar "||"
        }
      }
    }
    >>
  }
}

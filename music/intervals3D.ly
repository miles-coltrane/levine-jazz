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
      ef1:maj7 | r1 | a1:min7
    }
    \new Staff {
      \key ef \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Dizzy Gillespie 'Groovin' High'"
        \relative {
          \skip \f % spacer to set voice volume
          \once\override HorizontalBracketText.text = "minor 3rd"
          bf'8 \startGroup g8 \stopGroup r4 r2 |
          bf8 g8 r4 r2 |
          r8 e a c b a gs e
          \bar "||"
        }
      }
    }
    >>
  }
}

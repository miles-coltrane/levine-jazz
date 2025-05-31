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
      r4 | f1:min7 | r1 | r1
    }
    \new Staff {
      \key af \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Milt Jackson 'Bag's Groove'"
        \relative {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "perfect 5th"
          \partial 4 f'4 \startGroup \bar "||"
          c'2. \stopGroup bf8 af8 |
          bf4 af8 f8 af4 f8 ef8 |
          f4. ef8~ ef2
          \bar "||"
        }
      }
    }
    >>
  }
}

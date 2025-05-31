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
      r4. | d1:min7.5- | f1:7-.9-.10-.11+.13- % TODO: last chord is alt
    }
    \new Staff {
      \key ef \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Joe Henderson 'Serenity' second bar"
        \relative {
          \skip \ff % spacer to set voice volume
          \partial 4. g'8 af8 g'8~ |
          g2~ g8 f4 ef8~ |
          ef2~
          \once\override HorizontalBracketText.text = "minor 6th"
          ef8 \startGroup g, \stopGroup c d
          \bar "||"
        }
      }
    }
    >>
  }
}

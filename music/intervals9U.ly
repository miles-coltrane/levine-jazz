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
      bf1:maj7 | ef:7 | bf:maj7
    }
    \new Staff {
      \key bf \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Thelonius Monk 'Misterioso'"
        \relative {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "major 6th"
          f8 \startGroup d' \stopGroup g, ef' a, f' g, ef' |
          bf g' c, af' df, bf' c, af' |
          f, d' g, ef' a, f' g, ef'
          \bar "||"
        }
      }
    }
    >>
  }
}

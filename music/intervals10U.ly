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
      ef2:maj7 gf2:maj7 | a2:maj7 b4.:min7 e8:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "McCoy Tyner 'Aisha' last bar of bridge"
        \relative {
          \skip \ff % spacer to set voice volume
          g4~ \tuplet 3/2 {g8 g g} bf4~ \tuplet 3/2 { bf8 bf bf } |
          cs4 ~ \tuplet 3/2 { cs8 cs8 cs8 }
          \once\override HorizontalBracketText.text = "minor 7th"
          e4 \startGroup
          \tuplet 3/2 { r8 d'8 \stopGroup d,8 }
          \bar "||"
        }
      }
    }
    >>
  }
}

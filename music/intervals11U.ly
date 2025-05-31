\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
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
      r4. | d1:min7.5- | g:alt
    }
    \new Staff {
      \key ef \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Joe Henderson 'Serenity'"
        \relative {
          \skip \ff % spacer to set voice volume
          \partial 4. g'8
          \once\override HorizontalBracketText.text = "major 7th"
          af8 \startGroup g'~ \stopGroup \bar "||"
          g2~ g8 f4 ef8~ |
          ef2~ ef8 g, c d
          \bar "||"
        }
      }
    }
    >>
  }
}

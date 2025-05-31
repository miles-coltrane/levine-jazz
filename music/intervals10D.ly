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
      fs2:min7 b:alt | b:min7 e:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Billy Strayhorn 'Chelsea Bridge' fourth bar of bridge"
        \relative {
          \skip \ff % spacer to set voice volume
          b'8 gs' e cs c g'4 ef8 |
          \once\override HorizontalBracketText.text = "minor 7th"
          d2. \startGroup e,8 \stopGroup fs
          \bar "||"
        }
      }
    }
    >>
  }
}

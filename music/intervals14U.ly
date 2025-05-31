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
      a1:min7 | r1
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef bass
      {
        \sectionLabel "Joe Henderson 'No Me Escueca' bass part intro" % TODO: not getting 'No'
        \relative {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "major 9th"
          a,4. \startGroup b'8 \stopGroup r8 a4 e8 |
          a, e' b'4 a4. e8
          \bar "||"
        }
      }
    }
    >>
  }
}

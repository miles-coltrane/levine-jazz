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
      a2:m7.5- d:alt | g:m7.5- c:alt | f:min7 bf:alt
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Benny Golson 'I Remember Clifford' bar 18"
        \relative {
          \skip \ff % spacer to set voice volume
          ef''2~ ef8 f, bf c |
          df2~
          \once\override HorizontalBracketText.text = "minor 9th"
          df8 \startGroup c, \stopGroup ef f |
          g c, ef g fs4 b
          \bar "||"
        }
      }
    }
    >>
  }
}

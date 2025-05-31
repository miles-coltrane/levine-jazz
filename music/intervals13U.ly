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
      g2.:sus9- | r | c:min7 | f:7 | bf:maj7.5+
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble
      {
        \sectionLabel "Wayne Shorter 'Wild Flower' bar 11 of bridge"
        \relative {
          \skip \ff % spacer to set voice volume
          d''2.~ |
          d4. c8 bf a~ |
          a4. f8 d d'~ |
          d4. c8 bf a~ |
          a4. fs8
          \once\override HorizontalBracketText.text = "minor 9th"
          d \startGroup ef' \stopGroup
          \bar "||"
        }
      }
    }
    >>
  }
}

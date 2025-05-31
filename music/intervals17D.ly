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
      df1:11+.7+ | r | r  % NOTE: using sharp-11 not sharp-4
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Joe Henderson 'Inner Urge' bar 15"
        \relative {
          \skip \ff % spacer to set voice volume
          g4. g8 f c g' c |
          df4. f8 g8 c4.~
          \once\override HorizontalBracketText.text = "11th"
          c4. \startGroup g,8 \stopGroup f4
          \bar "||"
        }
      }
    }
    >>
  }
}

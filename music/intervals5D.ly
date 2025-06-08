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
      \set chordNameExceptions = #altExceptions
      e1:alt | r1 | f1:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Wayne Shorter 'ESP'"
        \relative {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "perfect 4th"
          c''4. \startGroup g8~ \stopGroup  g4. d8~ |
          d4. g8~ g4 c8 g8~ |
          g4. d8~ d4. c'8
          \bar "||"
        }
      }
    }
    >>
  }
}

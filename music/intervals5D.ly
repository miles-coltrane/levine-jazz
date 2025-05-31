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
      e1:7-.9-.10-.11+.13- | r1 | f1:maj7 % TODO: first chord is E7alt
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Wayne Shorter 'ESP'"
        \relative {
          \skip \f % spacer to set voice volume
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

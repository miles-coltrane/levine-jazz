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
      g2:maj7 e2:min7 | a2:min7 d2:7 | b2:min7 e2:7.9-
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Duke Ellington 'Sophisticated Lady' 3rd bar of bridge"
        \relative {
          \skip \ff % spacer to set voice volume
          r8 d'4 b8 e4 b8 g'8~ |
          g8 e8 b'4 fs8 e'4 as,8 |
          \once\override HorizontalBracketText.text = "tritone"
          b4 \startGroup  f2. \stopGroup
          \bar "||"
        }
      }
    }
    >>
  }
}

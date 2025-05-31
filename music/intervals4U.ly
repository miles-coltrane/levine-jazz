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
    \chords{
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      r4. | c2:maj7 f2:7 | bf1:11+
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Thelonius Monk 'Monk's Dream'"
        \relative {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "major 3rd"
          \partial 4. c'8 \startGroup \tuplet 3/2 { e \stopGroup g a } \bar "||"
          b4 a8 c,8 g'8 c,4 e8 |
          r2 r8 c8 \tuplet 3/2 { e g a }
          \bar "||"
        }
      }
    }
    >>
  }
}

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
      R4. | ef1:maj~ | ef1:maj
    }
    \new Staff {
      \key ef \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Miles Davis 'Four'"
        {
          \skip \f % spacer to set voice volume
          \once\override HorizontalBracketText.text = "major 2nd"
          \partial 4. bf'8 \startGroup c''8 \stopGroup d''8 \bar "||"
          r8 bf'8 c''8  d''8 r8 bf'8 c''8  d''8 |
          r8 f''8 ef''8 d''8 r8 bf'8 c''8  df''8
          \bar "||"
        }
      }
    }
    >>
  }
}

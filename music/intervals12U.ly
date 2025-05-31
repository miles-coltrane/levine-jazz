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
      r1 | f1:min7 | bf1:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Sam Jones 'Del Sasser'"
        \relative {
          \skip \ff % spacer to set voice volume
          r8 bf4. bf4
          \once\override HorizontalBracketText.text = "octave"
          bf4 \startGroup |
          bf'1 \stopGroup |
          r8 c4. ef,4 f8 g8
          \bar "||"
        }
      }
    }
    >>
  }
}

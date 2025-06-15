\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/sus.ly"
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
      \set chordNameExceptions = #susExceptions
      R4 | ef2:maj bf2:sus7 | a1:sus7 | d1:maj
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Cedar Walton's 'Bolivia'"
        {
          \skip \ff % spacer to set voice volume
          \once\override HorizontalBracketText.text = "minor 2nd"
          \partial 4 ef''4 \startGroup \bar "||"
          d''2 \stopGroup bf'4. fs'8~ |
          fs'2. a'4 |
          cs''4 fs'8 a'8~ a'2
          \bar "||"
        }
      }
    }
    >>
  }
}

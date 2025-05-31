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
      r1 | df1:maj7 | ef2:min7 af:7
    }
    \new Staff {
      \key df \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Freddie Hubbard 'Philly Mignon'"
        \relative {
          \skip \ff % spacer to set voice volume
          r8 af' bf c df ef f gf \bar ".|:"
          \once\override HorizontalBracketText.text = "octave"
          af \startGroup af, \stopGroup r4 r2 |
          r8 af bf c df ef f gf |
          \bar "||"
        }
      }
    }
    >>
  }
}

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
      g1:min7 | df:11+
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      {
        \sectionLabel "Billy Strayhorn 'Chelsea Bridge' bar 24"
        \relative {
          \skip \ff % spacer to set voice volume
          \tuplet 3/2 { bf'4 g bf}
          \tuplet 3/2 { d bf d } |
          \once\override HorizontalBracketText.text = "major 13th"
          g4 \startGroup
          bf,,8 \stopGroup c df ef \tuplet 3/2 { f8 gf af }
          \bar "||"
        }
      }
    }
    >>
  }
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/sus.ly"
\include "include/thirds.ly"
\score {
  \midi {
    \tempo 4=140
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      \set chordNameExceptions = #susExceptions
      e1:sus9-
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      \relative {
        \skip \fff % spacer to set voice volume
        \set fingeringOrientations = #'(left right)
        <
          e'\root
          f\finger\markup{\override #'(font-name . "sans")"♭9"}
          a\fourth
          b\fifth
          d\seventh
        >1
        \bar "||"
      }
    }
    >>
  }
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=120
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      r4 | c1:min7  | f:7.11+
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4 cs'8 <ef~ g~ bf~ d~> |
          <ef g bf d>2 bf'8 g4 ef8 |
          cs'8 <ef,~ gf~ b~>
          \set fingeringOrientations = #'(right)
          <ef gf b\finger\markup{\override #'(font-name . "sans")"♯11"}>2.
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4 r8 c8~ | c1  | r8 <f~ a~> <f a>2.
          \bar "||"
        }
      }
    }
  >>
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=110
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
    ragged-right = ##t
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      r4. | ef1:maj7
    }
    \new Staff {
      \key ef \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      \relative {
        \skip \fff % spacer to set voice volume
        \partial 4.
        g'8 af bf | c af \stemDown bf16 c bf g \stemUp af bf af f g af g ef |
        f g f d ef c d8 ef f g4~ | \break
        g8 f16 ef16 d8 bf8 g2
        \bar "||"
      }
    }
    >>
  }
}

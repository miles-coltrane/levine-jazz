\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
% Giant Steps, John Coltrane, Giant Steps
\score {
  \midi {
    \tempo 4=280
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
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      a2:min7 d:7 | g1:maj7 | cs2:min7 fs2:7 | b1:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <c' e b'>2 <c e a>2 | <fs a b d>1 | <e gs ds'>2 <es gs cs>2 | <as c ds fs>1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        {
          \skip \f % spacer to set voice volume
          <a g,>2 <d fs>2 | g,1 | <cs b>2 <fs as>2 | b,1
          \bar "||"
        }
      }
    }
  >>
}

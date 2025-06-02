\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=180
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
      \set midiMaximumVolume = #0 % prevent named chords sounding
      d1:7~ | d:7 | g:7~ | g:7 | c:7~ | c:7 | f:7~ | f:7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <c'~ e~ b'~>1 |
          <c  e  b'> |
          <b~ e~ a~> |
          <b  e  a> |
          <bf~ d~ a'~> |
          <bf  d  a'> |
          <a~ d~ g~> |
          <a  d  g>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          % TODO: align text
          \skip \f % spacer to set voice volume
          <d~ fs~>1_\markup{V} |
          <d  fs>_\markup{of} |
          <g,~ f'~>_\markup{V} |
          <g   f'>_\markup{of} |
          <c~ e~>_\markup{V} |
          <c  e>_\markup{of} |
          <f,~ ef'~>_\markup{V} |
          <f  ef'> |
        }
      }
    }
    >>
  }
}

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
    indent = 0\mm
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      a2:7 d:alt | g:7 c:7.9+ | f:7.9+ bf:7 | ef:7 af4.:7 df8:7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <a' a'>4 f' d bf | g g' g8 f e f~ |
          f ef16 d16 df4 bf gf |
          ef ef' ef8 df c <ef, af df>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          % TODO: align text
          \skip \f % spacer to set voice volume
          <g df' gf>2_\markup{V of}
          <gf c f>_\markup{V of} |
          <f b e>_\markup{V of}
          <e bf' ef>4._\markup{V}
          <a~ ef'~ af~>8_\markup{of} |
          <a ef' af>2_\markup{V of}
          <af d g>_\markup{V of} |
          <g df'>2_\markup{V of}
          <gf c f>4._\markup{V of}
          <f cf'>8_\markup{V}|
        }
      }
    }
    >>
  }
}

\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=100
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
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      g4:7 | c1:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4
          <b e b'>4 \bar "||"
          <d g c>1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          % TODO: put II / V above "in key of"
          \skip \f % spacer to set voice volume
          \textSpannerDown
          \override TextSpanner.bound-details.left.text = \markup { \upright "in key of C" }
          \partial 4
          <g, f'>4-\markup{V}\startTextSpan \bar "||"
          <c e a>1-\markup{I}\stopTextSpan
          \bar "||"
        }
      }
    }
    >>
  }
}

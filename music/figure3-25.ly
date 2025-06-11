\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/thirds.ly"
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
      g1:7 | g:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \set fingeringOrientations = #'(right) % TODO: figure why not set to R
          g'8 a b c_\markup\center-align{"4th"} d e f g \bar "||"
          g,8 a b c_\markup\center-align{"4th"} d e f g \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        <g c' f'>1 \bar "||"
        <g b d' f'>1 \bar "||"
      }
    }
  >>
}

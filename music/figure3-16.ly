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
      r4 | c2.:maj7 | f:maj7 % TODO: want "FΔ ♯4"
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4 g'8. g16| g'4 e c |
          <<
            {
              \set fingeringOrientations = #'(right) % TODO: figure why not set to R
              b4-\finger\markup{\override #'(font-name . "sans")"♯4"}
              a2
            }
            \new Voice { \voiceTwo e2. }
          >>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        \partial 4 r4 | c,2. | f,2.
        \bar "||"
      }
    }
  >>
}

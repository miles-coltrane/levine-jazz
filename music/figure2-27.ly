\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
root = \finger\markup{\override #'(font-name . "sans")"root"}
third = \finger\markup{\override #'(font-name . "sans")"3rd"}
fifth = \finger\markup{\override #'(font-name . "sans")"5th"}
seventh = \finger\markup{\override #'(font-name . "sans")"7th"}
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
      r\breve | e1:min7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \fff % spacer to set voice volume
        % TODO: boxes around chord notes
        \sectionLabel \markup { "           E Phyrgian mode" }
        e'4 f g a b c d e
        <e,-\root g-\third b-\fifth d-\seventh>1
        \bar "||"
      }
      \addlyrics {
         root "2nd" "3rd" "4th" "5th" "6th" "7th" octave III
      }
    }
    >>
  }
}

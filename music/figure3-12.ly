\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/thirds.ly"
\score {
  \midi {
    \tempo 4=140
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
      \override SpacingSpanner.spacing-increment = 4
    }
    indent = 0\mm
  }
  {
    \new PianoStaff \with { instrumentName = "IV" } <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      c\breve:maj7 % TODO: want "CΔ ♯4"
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      {
        \skip \fff % spacer to set voice volume
        c'4
        d'
        e'
        f'
        g'
        a'
        b'
        c''^\markup\center-align{"C Lydian mode"}
        \bar "||"
      }
      \addlyrics {
        "" "" "" "♯4" "5th" "" "" ""
      }
    }
    >>
  }
}

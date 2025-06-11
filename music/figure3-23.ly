\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/sus.ly"
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
    \new PianoStaff \with { instrumentName = "V" } <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      g\breve:sus % TODO: want Gsus not Gsus4
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      {
        \skip \fff % spacer to set voice volume
        g'4
        a'
        b'
        c''
        d''
        e''
        f''
        g''^\markup\right-align{"G Mixolydian mode"}
        \bar "||"
      }
      \addlyrics {
        "" "" "" "11th" "" "" "" ""
      }
    }
    >>
  }
}

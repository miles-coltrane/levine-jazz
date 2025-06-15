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
    \new PianoStaff \with { instrumentName = "III" } <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      \set chordNameExceptions = #susExceptions
      e\breve:sus9- % TODO: want Esus b9 not E7sus4 b9
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      {
        \skip \fff % spacer to set voice volume
        e'4
        f'
        g'
        a'
        b'
        c''
        d''
        e''^\markup\right-align{"E Phrygian mode"}
        \bar "||"
      }
    }
    >>
  }
}

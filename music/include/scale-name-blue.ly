\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
      \override SpacingSpanner.spacing-increment = 2
      \applyContext #(override-color-for-all-grobs (x11-color 'blue))
    }
    indent = 0\mm
    ragged-last = ##t
  }
  {
    \new PianoStaff \with { instrumentName = \theName } {
      \key \theKey \major
      \override Timing.TimeSignature.stencil = ##f
      \time \theSignature
      \clef treble {
        \skip \fff % spacer to set voice volume
        \theTreble
      }
    }
  }
}

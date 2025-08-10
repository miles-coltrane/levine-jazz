\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
    ragged-last = ##t
  }
  {
    \new Staff {
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

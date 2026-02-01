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
  \new GrandStaff <<
    \new PianoStaff \with { instrumentName = \theName } {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \theTreble
      }
    }
    \new PianoStaff \with { instrumentName = \claveName } {
      \key \theKey \major
      \clef treble {
        \skip \f % spacer to set voice volume
        \theClave
      }
    }
    \new PianoStaff \with { instrumentName = \altClaveName } {
      \key \theKey \major
      \clef \altClef {
        \skip \f % spacer to set voice volume
        \altClave
      }
    }
  >>
}

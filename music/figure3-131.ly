\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 9/4
theChords = \chordmode {
  % TODO: set diminished chords below staff
  g4:7.9- af:dim bf:7.9- b:dim cs:7.9- d:dim e:7.9- f:dim g:7.9-
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 3
  \override Timing.TimeSignature.stencil = ##f
  <f' af' b' e''>1 s1 s4
  \bar "||"
}
theBass = {
  \bar "||"g,4 af, bf, b, cs d e f g
}

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
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \theTreble
      }
    }
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      \theChords
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        \theBass
      }
    }
  >>
}

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
      c1:7         |       f1:7         |  c1:7   | cs2:min7 fs2:7 |    f1:7   | f2:min7 bf2:7 |
  ef2:min7 a2:min7 | ef2:min7 af2:min7  | d1:min7 |      g1:7      | c2:7 a2:7 | d2:min7 g2:7
}
theTreble = \relative {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  <bf e>1 | <a ef'>1 | <bf e>1 | <b e>2 <as e'>2 | <a ef'>1 | <af ef'>2 <af d>2 | \break
  <g d'>2 <g cs>2 | <gf df'>2 <gf c>2 | <f c'>1 | <f b>1 | <bf e>2 <g cs>2 | <f c'>2 <f b>2
  \bar "||"
}
theBass = {
  c,1     |    f,1    | c,1 | cs,2 fs,2 |   f,1   | f,2 bf,2 | \break
  c,2 a,2 | ef,2 af,2 | d,1 |    g,1    | c,2 a,2 | d,2 g,2
  \bar "||"
}

% Copy of "include/dual-aligned.ly" with "\omit BarNumber" removed
\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
    }
    indent = 0\mm
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      \theChords
    }
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \theTreble
      }
    }
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \theBass
      }
    }
  >>
}

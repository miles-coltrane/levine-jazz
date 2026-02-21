\version "2.24.4"
\include "include/prologue.ly"

% Mr Day, John Coltrane, Plays The Blues
theTempo = 115
theKey = c
theSignature = 4/4
theChords = \chordmode {
  gf1:sus4 | r | r | r | b:sus4 | r |
  gf:sus4 | r | b:7 | a:7 | gf:sus4 | r
}
theTreble = \relative {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  <cf' ff af bf>1 |
  <cf ff af bf>1 |
  <cf ff af bf>1 |
  <cf ff af bf>1 |
  <a cs e gs> |
  <a cs e gs> | \break

  <cf ff af bf>1 |
  <cf ff af bf>1 |
  <ds gs b> |
  <cs fs a> |
  <cf ff af bf>1 |
  <cf ff af bf>1 |
  \bar "||"
}
theBass = {
  <gf, gf>1 |
  <gf, gf>1 |
  <gf, gf>1 |
  <gf, gf>1 |
  <b,, b,> |
  <b,, b,> | \break

  <gf, gf>1 |
  <gf, gf>1 |
  <b, a> |
  <a, g> |
  <gf, gf>1 |
  <gf, gf>1 |
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

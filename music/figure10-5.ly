\version "2.24.4"
\include "include/prologue.ly"

theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c1:min | r | r | c:alt | f:min | r
  c:min | r| af:7 | g:7 |c:min | g:alt
}
theTreble = \relative {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \set Score.barNumberVisibility = #all-bar-numbers-visible

  <a d g>1 |
  <a d g>1 |
  <a d g>1 |
  <bf ef af>1 |
  <af c g'>1 |
  <af c g'>1 | \break
  <a d g>1 |
  <a d g>1 |
  <c f bf>1 |
  <b e a>1 |
  <a d g>1 |
  <cf ef bf'>1

  \bar "||"
}
theBass = {
   <c ef>1 |
   <c ef>1 |
   <c ef>1 |
   <c e>1 |
   <f, d>1 |
   <f, d>1 | \break
   <c ef>1 |
   <c ef>1 |
   <af, gf>1 |
   <g, f>1 |
   <a ef>1 |
   <g, f>1
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

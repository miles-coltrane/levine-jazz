\version "2.24.4"
\include "include/prologue.ly"

% Giant Steps, John Coltrane, Giant Steps
theTempo = 280
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:maj7 d2:7 | g2:maj7 bf2:7 | ef1:maj7 | a2:min7 d2:7 |
  g2:maj7 bf2:7 ef2:maj7 fs2:min7 | b1:maj7 | f2:min7 bf2:7 |
  ef1:maj7 | a2:min7 d2:7 | g1:maj7 | cs2:min7 fs2:7 |
  b1:maj7 f2:min7 bf2:7 |ef1:maj7 | cs2:min7 fs2:7
}
theTreble = \relative {
  <as ds>2 <c fs> | <b fs'>2 <af d>2 | <g d'>1 | <c g'>2 <c fs>2 |\break
  <b fs'>2 <af d>2 | <g d'>2 <as e'>2 | <as ds>1 | <af ef'>2 <af d>2 |\break
  <g d'>1 | <c g'>2 <c fs>2 | <b fs'>1 | <b e>2 <as e'>2 |\break
  <as ds>1 | <af ef'>2 <af d>2 | <g d'>1 <b e>2 <as e'>2
  \bar "||"
}
theBass = {
  b,2 d,2 | g,2 bf,2 | ef,1 | a,2 d,2  | \break
  g,2 bf,2 | ef,2 fs,2 | b,,1 | f,2 bf,2 | \break
  ef,1 | a,2 d,2 | g,1 | cs,2 fs,2 | \break
  b,,1 | f,2 bf,,2 | ef,1 | cs,2 fs,2
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  \small
  "I in B"2  "V - I in G - - - - - - -"1 "V- I in E♭ - - - - - - - - -"1. "II - V - I in G - - - - - - -"1
  "- - - -"2 "V - I in E♭  - - - - - -"1 "V -I in B - - - - - - - - -"1.  "II - V - I in E♭ - - - - - -"1
  "- - - - - - - - -"1 "II - V - I in G - - - - - - - - - - - - - - - - -"\breve  "II - V - I in B - - - - - - - -"1
  "- - - - - - - - -"1 "II - V - I in E♭ - - - - - - - - - - - - - - - -"\breve   "II - V - I in B - - - - - - - -"1
}

% Adapted from "include/dual+lyrics2.ly"

\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
    }
    indent = 0\mm
    ragged-last = ##f
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
      \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
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
      <<
      \clef bass {
        \skip \f % spacer to set voice volume
        \theBass
      }
      \new Lyrics {
        \theLyrics
      }
      >>
    }
  >>
}

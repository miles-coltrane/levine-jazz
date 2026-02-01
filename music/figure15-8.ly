\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  bf1:maj7 af2:min7 df2:7 | gf1:maj7 | e2:min7 a2:7 |
  d1:maj7 af2:min7 df2:7 | gf1:maj7 | g2:min7 g2:7
}
theTreble = {
  \override Score.SpacingSpanner.spacing-increment = 2
  <d' a'>1 | <gf' cf''>2 <f' c''>2 | <f' bf'>1 | <d' g'>2 <cs' g'>2 | \break
  <cs' fs'>1 | <cf' gf'>2 <cf' f'>2 | <bf f'>1 | <bf f'>2 <bf e'>2
  \bar "||"
}
theBass = {
  bf,1 | af,2 df,2 | gf,1 | e,2 a,2 | \break
  d,1 af,2 df,2 | gf,1 | g,2 c2 |
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  \small
  "I in B♭ - - - - -"1 "II - V - I in G♭ - - - - - - - - - - - - - - - - - - -"\breve "II - V - I in D - - - - - -"1
  "- - - - - - - - -"1 "II - V -I in G♭ - - - - - - - - - - - - - - - - - - -"\breve "II - V in F - - - - - - -"1
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

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  b2:maj7 d:7 | g:maj7 bf:7 | ef1:maj7 | a2:min7 d:7 |
  g:maj7 bf:7 |ef:maj7 fs:7 | b1:maj7 | f2:min7 bf:7 |
  ef1:maj7 | a2:min7 d:7 | g1:maj7 | cs2:min7 fs:7 |
  b1:maj7 | f2:min7 bf:7 | ef1:maj7 | cs2:min7 fs:7
}
theTreble = \relative {
  \improvisationOn \omit Stem
  \set Staff.midiMaximumVolume = #0
  b'4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 | \break
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 | \break
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 | \break
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4
  \improvisationOff \undo \omit Stem
  \bar "|."
}
theLyrics = \lyricmode {
  \markup\center-column{"B" "F♯"}2 \markup\center-column{"G" "D"}2 | ""2 \markup\center-column{"E♭" "B♭"}2 | ""1 | \markup\center-column{"G" "D"}1 |
  ""2 \markup\center-column{"E♭" "B♭"}2 | ""2 \markup\center-column{"B" "F♯"}2 | ""1 | \markup\center-column{"E♭" "B♭"}1 |
  ""1 | \markup\center-column{"G" "D"}1 | ""1 | \markup\center-column{"B" "F♯"}1 |
  ""1 | \markup\center-column{"E♭" "B♭"}1 | ""1 | \markup\center-column{"B" "F♯"}1
}

\include "include/treble-lyrics-aligned.ly"

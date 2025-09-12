\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 28/4
theChords = \chordmode {
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \override Timing.TimeSignature.stencil = ##f
  <c' e g>1 <d f a>
  <e g b>  <f a c>
  <g b d>  <a c e>
  <b d f>
  \bar "||"
}
theLyrics = \lyricmode {
  \markup\center-column{"major" "I"}
  \markup\center-column{"minor" "II"}
  \markup\center-column{"minor" "III"}
  \markup\center-column{"major" "IV"}
  \markup\center-column{"major" "V"}
  \markup\center-column{"minor" "VI"}
  \markup\center-column{"diminished" "VII"}
}

\include "include/treble-lyrics.ly"

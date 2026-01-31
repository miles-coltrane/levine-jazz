\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  c\breve:7 | af\breve:maj7
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  \override Score.SpacingSpanner.spacing-increment = 5
  c'4 d e f g a bf c |
  af bf c df ef f g af
  \bar "||" \break
  c,,4^\markup\left-align{"" "C, F, G, and B♭ - the common tones of C7 and A♭Δ"} f g bf
  \bar "||"
}
theLyrics = \lyricmode {
  ""2 \markup\left-align{"C Mixolydian scale"}1  ""2 |
  ""2 \markup\left-align{"A♭ major scale"}1 ""2
}

\include "include/treble-lyrics.ly"

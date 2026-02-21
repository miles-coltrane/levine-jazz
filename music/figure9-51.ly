\version "2.24.4"
\include "include/prologue.ly"

% Black Narcissus, Joe Henderson, Power To The People
theTempo = 135
theKey = c
theSignature = 3/4
theChords = \chordmode {
  af2.:min7 | bf:min7/af | af:min7 | bf:min7/af | af:min7 | bf:min7/af |
  af:min7 | cf:maj7.11+ | fs:min7 | gs:min7/fs | fs:min7 | gs:min7/fs |
  fs:min7 | gs:min7/fs | fs:min7 | a:maj7.11+ | ef:maj7.11+ | f:maj7.11+ |
  bf:maj7.11+ | c:maj7.11+ | ef:maj7.11+ | f4.:maj7.11+ bf:maj7.11+ |
  g:maj7.11+ af:maj7.11+ | bf:maj7.11+ c:maj7.11+
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 3.8
  bf'2. | bf2. | bf2. | bf2. | bf4. ef4. | df bf | \break
  af gf | bf df, | gs2. | gs2. | gs2. | gs2. | \break
  gs4. cs | b gs | fs e | ds8 b8 cs4. a8 | d2. | e8 b4 e4 g8 | \break
  \tuplet 3/2 {a8 bf g} a2 | d8 b8~ b2 | r4 r8 d,4. | e8 b4 e4 g8 | \break
  \tuplet 3/2 {a8 bf g} a2 | c4 d2
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "Melody built off of G♭ pentatonic scale - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"2.*6
  "- - - - - - - - - - - - - - - - - - - - - - - -"2.*2 "melody built off of E pentatonic scale - - - - - - - - - - -"2.*4
  "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"2.*3
}

\include "include/treble-lyrics.ly"

\version "2.24.4"
\include "include/prologue.ly"

% All Of You, Miles Davis, My Funny Valentine 1964
theTempo = 190
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 |
  g:min7 | c:7
}
theTreble = \relative {
  \tuplet 3/2 {ef''8 c af}
  \tuplet 3/2 {f d' bf}
  \tuplet 3/2 {g ef c'}
  \tuplet 3/2 {af f d} |
  \tuplet 3/2 {bf' g ef}
  \tuplet 3/2 {c af' f}
  \tuplet 3/2 {d bf g'}
  \tuplet 3/2 {ef c af} | \break
  \tuplet 3/2 {r gf'16 f16 d8}
  \tuplet 3/2 {b g g'}
  \tuplet 3/2 {e cs a}
  \tuplet 3/2 {a' fs d} |
  \tuplet 3/2 {b b' fs}
  \tuplet 3/2 {d b cs'}
  \tuplet 3/2 {a f cs}
  r4
  \bar "||"
}
theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
   "F-7 - - - -"4 \tuplet 3/2 {""8 "E♭Δ - - - -"4} \tuplet 3/2 {""4 "Dø - - - -"8 } ""4 |
   "C-7 - - - -"4 \tuplet 3/2 {""8 "B♭7 - - - -"4} \tuplet 3/2 {""4 "A♭7 - - - -"8} ""4 |
   \tuplet 3/2 {""8 ""16  "G7 - - - -"8.} \tuplet 3/2 {""4 "A7 - - - -"8} ""4  "B-7 - - - -"4 |
   "B minor triad"4  \tuplet 3/2 {""4 "F♯ minor triad"8 }
}

\include "include/treble-lyrics-aligned.ly"

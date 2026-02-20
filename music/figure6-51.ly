\version "2.24.4"
\include "include/prologue.ly"

% All Of You, Miles Davis, My Funny Valentine 1964
theTempo = 190
theKey = ef
theSignature = 4/4
theChords = \chordmode {
  f1:min7 | bf:7 | g:min7 | c:7 |
  f1:min7 | bf:7 | g:min7 | c:7 |
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 1
  \tuplet 3/2 {af8 f af}
  \tuplet 3/2 {c af c}
  \tuplet 3/2 {bf g bf}
  \tuplet 3/2 {d bf d} |
  \omit TupletNumber
  \tuplet 3/2 {c af c}
  \tuplet 3/2 {ef c ef}
  \tuplet 3/2 {d bf d}
  \tuplet 3/2 {f d f} | \break
  \tuplet 3/2 {e c e}
  \tuplet 3/2 {g e g}
  \tuplet 3/2 {fs d fs}
  \tuplet 3/2 {a fs a} |
  \tuplet 3/2 {g ef g}
  \tuplet 3/2 {bf g bf}
  \tuplet 3/2 {gs e gs}
  \tuplet 3/2 {b gs b} | \break
  \tuplet 3/2 {af f af}
  \tuplet 3/2 {c af c}
  \tuplet 3/2 {bf g bf}
  \tuplet 3/2 {d bf d} |
  \tuplet 3/2 {b af b}
  \tuplet 3/2 {d cs d}
  \tuplet 3/2 {df bf df}
  \tuplet 3/2 {e df e} | \break
  \tuplet 3/2 {d b d}
  \tuplet 3/2 {f d f}
  \tuplet 3/2 {e c e}
  \tuplet 3/2 {g e g} |
  \tuplet 3/2 {fs cs f}
  \tuplet 3/2 {a fs a}
  r2
  \bar "||"
}
theLyrics = \lyricmode {
  \override Lyrics.LyricText.self-alignment-X = #LEFT
  "F minor ..."2 "G minor ..."2 |
  "A♭ major ..."2 "B♭ major ..."2 |
  "C major ..."2 "D major ..."2 |
  "E♭ major ..."2 "E major ..."2 |
  "F minor ..."2 "G minor ..."2 |
  "A♭ diminished ..."2 "B♭ diminished ..."2 |
  "B diminished ..."2 "C major ..."2
}
\include "include/treble-lyrics-aligned.ly"

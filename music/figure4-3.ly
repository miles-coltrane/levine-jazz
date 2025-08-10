\version "2.24.4"
\include "include/prologue.ly"

theTreble = \relative {
  c''8 b a g f e d c |
  d e f g a b c d |
  e d c b a g f e | \break
  f g a b c d e f |
  g f e d c b a b |
  a b c d e f g a | \break
  b a g f e d c b |
  c d e f g a b c
  \bar "||"
}

theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "Ionian"1 |
  "Dorian"1 |
  "Phrygian"1 |
  "Lydian"1 |
  "Mixolydian"1 |
  "Aeolian"1 |
  "Locrian"1 |
  "Ionian"1 |
}

\score {
  \midi {
    \tempo 4=120
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
    ragged-last = ##t
  }
  { <<
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \skip \fff % spacer to set voice volume
        \theTreble
      }
    }
    \new Lyrics {
      \theLyrics
    }
  >> }
}

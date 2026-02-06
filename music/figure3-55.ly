\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
% Flamenco Sketches, Miles Davis, Kind of Blue
\score {
  \midi {
    \tempo 4=60
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
    ragged-last = ##t
  }
  {
    \new Staff {
      \set Staff.midiInstrument = "trumpet"
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      \relative {
        \skip \fff % spacer to set voice volume
        r4 \tuplet 3/2 {d''8 d8 d8} \tuplet 3/2 {d ef f~} f4~ |
        \tupletUp
        \tuplet 3/2 {f4 ef8} \tuplet 5/4 {d16 d d a c~} c2 | \break

        \tuplet 3/2 {r8 r8 d8} \tuplet 3/2 {d ef f~} f4~ \tuplet 3/2 {f4 ef8} |
        \tuplet 3/2 {d16 ef d~} d8~ d4~ \tuplet 3/2 {d4 a8} \tuplet 3/2 {c4 d8} | \break

        \tuplet 3/2 {d8 ef f~} f4 \tuplet 3/2 {r8 r8 g8} \tuplet 3/2 {f4 d8} |
        \tuplet 3/2 {ef8 d4~} d16 c16 bf16 a16~  a2~ | \break % TODO: shown as 32 16 16 32 but bar doesn't add up

        a2 \tuplet 3/2 {r8 r8 c8} \tuplet 3/2 {a4 bf8} |
        bf1
        \bar "||"
      }
    }
  }
}

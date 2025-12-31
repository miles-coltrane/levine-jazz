\version "2.24.4"
\include "include/prologue.ly"
\include "include/slash.ly"
\score {
  \midi {
    \tempo 4=100
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
  }
  {
    <<
    \new ChordNames \chordmode {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ff % spacer to set voice volume
      d4:min7 d:min7 ef:maj7 ef:maj7 |
      bf,:maj7 bf,:maj7 a,:7 a,:7 |
      bf,:min7 bf,:min7 a,:maj7 a,:maj7 |
      d:7 d:7 ef:maj7 ef:maj7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      <<
        \clef treble {
          \new Voice \with { \consists Pitch_squash_engraver } {
            \override Score.SpacingSpanner.spacing-increment = 2
            \startSlash
            b'4 4 4 4 |
            4 4 4 4 |
            4 4 4 4 |
            4 4 4 4 \bar "||"
            \stopSlash
          }
        }
        \new Lyrics \with {
          \override LyricText.self-alignment-X = #LEFT
        } \lyricmode {
            "II in C"2
            "V in A♭"2
            "I in B♭"2
            "V in D"2
            "II in A♭"2
            "I in A"2
            "V in G"2
            "I in E♭"2
        }
      >>
    }
    >>
  }
}

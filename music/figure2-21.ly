\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/slash.ly"
\score {
  \midi {
    \tempo 4=180
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
      \override SpacingSpanner.spacing-increment = 3
    }
    indent = 0\mm
  }
  {
    <<
    \new ChordNames \chordmode {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      f1:min7 | bf:min7 | ef:7 | af:maj7 | df:maj7 | d2:min7 g:7 | c1:maj7 | r
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      <<
        \clef treble {
           s1 | s | s | s | s | s | s | s \bar "||"
        }
        \new Lyrics \with {
          \override LyricText.self-alignment-X = #LEFT
        } \lyricmode {
          "F....."1
          "B♭....."1
          "E♭....."1
          "A♭....."1
          "D♭"1
          "D..."2 "G..."2
          "C"1
        }
        \new Lyrics \lyricmode {
          " "\longa
          " "1  % U+00A0 No-Break Space (NBSP)
          " "\breve
        }
        \new Lyrics \with {
          \override LyricText.self-alignment-X = #LEFT
        } \lyricmode {
          "chords follow the cycle of 5ths from F to D♭...."\longa
          ""1
          "and then from D to C"\breve
        }
      >>
    }
    >>
  }
}

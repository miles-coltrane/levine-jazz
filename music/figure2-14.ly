\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=100
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    \context {
      \Lyrics
      \consists Bar_engraver
      \consists Separating_line_group_engraver
      \hide BarLine
      \override Lyrics.LyricSpace.self-alignment-X = #LEFT

    }
    indent = 0\mm
  }
  {
    <<
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      g4:7 | c1:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4
          <b e b'>4 \bar "||"
          <d g c>1
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4
          <g, f'>4 \bar "||"
          <c e a>1
          \bar "||"
        }
      }
      \addlyrics {
        \markup \left-column {
          "     V"
          "     in key"
        }
        \markup \left-column { "  I" "of C"}
      }
    }
    >>
  }
}

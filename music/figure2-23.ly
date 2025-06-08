\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\score {
  \midi {
    \tempo 4=140
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #altExceptions
      a2:7 d:alt | g:7 c:7.9+ | f:7.9+ bf:7 | ef:7 af4.:7 df8:7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <a' a'>4 f' d bf | g g' g8 f e f~ |
          f ef16 d16 df4 bf gf |
          ef ef' ef8 df c <ef, af df>
          \bar "||"
        }
      }
    }
    \new Staff {
      <<
        \clef bass {
          \relative {
            \skip \f % spacer to set voice volume
            <g df' gf>2
            <gf c f> |
            <f b e> <e bf' ef>4. <a~ ef'~ af~>8 |
            <a ef' af>2 <af d g> |
            <g df'>2 <gf c f>4. <f cf'>8 |
          }
        }
        \new Lyrics \with {
          \override LyricText.self-alignment-X = #LEFT
        } \lyricmode {
          "V of"2
          "V of"2
          "V of"2
          "V"4 "of"4
          "V of"2
          "V of"2
          "V of"2
          "V of"4.
          "V"8
        }
      >>
    }
  >>
}

\version "2.24.4"
\include "include/prologue.ly"

theNotesC = { c'4 d'4 e'4 g'4 a'4 }
theNotesF = { f'4 g'4 a'4 c''4 d''4 }
theNotesG = { g'4 a'4 b'4 d''4 e''4 }

theModeC = \markup{"C pentatonic scale"}
theModeF = \markup{"F pentatonic scale"}
theModeG = \markup{"G pentatonic scale"}

theLyricsC = \lyricmode{"I" "" "" "" ""}
theLyricsF = \lyricmode{"IV" "" "" "" ""}
theLyricsG = \lyricmode{"V" "" "" "" ""}

\score {
  \midi {
    \tempo 4=160
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
      \override SpacingSpanner.spacing-increment = 4
    }
    indent = 0\mm
  }
  <<
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 5/4
      \clef treble {
        \skip \ff
        \theNotesC ^\markup\center-align{\theModeC} \bar "||" \break
        \theNotesF ^\markup\center-align{\theModeF} \bar "||" \break
        \theNotesG ^\markup\center-align{\theModeG} \bar "||" \break
      }
      \addlyrics {
        \theLyricsC |
        \theLyricsF |
        \theLyricsG |
      }
    }
  >>
}

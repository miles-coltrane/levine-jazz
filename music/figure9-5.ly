\version "2.24.4"
\include "include/prologue.ly"

theNotesC = { c'4 d'4 e'4 g'4 a'4 }
theNotesD = { d'4 e'4 g'4 a'4 c''4 }
theNotesE = { e'4 g'4 a'4 c''4 d''4 }
theNotesG = { g'4 a'4 c''4 d''4 e''4 }
theNotesA = { a'4 c''4 d''4 e''4 g''4 }

theModeC = \markup{"1st mode"}
theModeD = \markup{"2nd mode"}
theModeE = \markup{"3rd mode"}
theModeG = \markup{"4th mode"}
theModeA = \markup\center-column{"5th mode" "the \"minor pentatonic\" scale"}

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
        \theNotesD ^\markup\center-align{\theModeD} \bar "||" \break
        \theNotesE ^\markup\center-align{\theModeE} \bar "||" \break
        \theNotesG ^\markup\center-align{\theModeG} \bar "||" \break
        \theNotesA ^\markup\center-align{\theModeA} \bar "||" \break
      }
    }
  >>
}

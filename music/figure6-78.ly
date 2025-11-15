\version "2.24.4"
\include "include/prologue.ly"

theChordA = \chordmode { g\breve:min7 }
theModeA = \markup { "G Dorian mode" }
theNotesA = \relative { g'4 a bf c d e f g }
theLyricsA = \lyricmode { "" "" "" "" "" "" "" "" }

theChordB = \chordmode { af\breve:maj7 }
theModeB = \markup { "A♭ major scale" }
theNotesB = \relative { af'4 bf c df ef f g af }
theLyricsB = \lyricmode { "" "" "" "" "" "" "" "" }

theChordC = \chordmode { af\breve:maj7.11+ }
theModeC = \markup { "A♭ Lydian mode" }
theNotesC = \relative { af'4 bf c d ef f g af }
theLyricsC = \lyricmode { "" "" "" "♯4" "" "" "" "" }

theChordD = \chordmode { cf\breve:maj7 }
theModeD = \markup { "C♭ major scale" }
theNotesD = \relative { cf'4 df ef ff gf af bf cf }
theLyricsD = \lyricmode { "" "" "" "" "" "" "" "" }

theChordE = \chordmode { cf\breve:maj7.11+ }
theModeE = \markup { "C♭ Lydian mode" }
theNotesE = \relative { cf'4 df ef f gf af bf cf }
theLyricsE = \lyricmode { "" "" "" "♯4" "" "" "" "" }

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
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \pppp
      \theChordA |
      \theChordB |
      \theChordC |
      \theChordD |
      \theChordE |
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble {
        \skip \ff
        \theNotesA ^\markup\center-align{\theModeA} \bar "||" \break
        \theNotesB ^\markup\center-align{\theModeB} \bar "||" \break
        \theNotesC ^\markup\center-align{\theModeC} \bar "||" \break
        \theNotesD ^\markup\center-align{\theModeD} \bar "||" \break
        \theNotesE ^\markup\center-align{\theModeE} \bar "||" \break
      }
      \addlyrics {
        \theLyricsA |
        \theLyricsB |
        \theLyricsC |
        \theLyricsD |
        \theLyricsE |
      }
    }
  >>
}

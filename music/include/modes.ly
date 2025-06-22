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
  % TODO: set I, II, ... VII to left of staves
  <<
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \pppp
      \theChordC |
      \theChordD |
      \theChordE |
      \theChordF |
      \theChordG |
      \theChordA |
      \theChordB |
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble {
        \skip \ff
        \theNotesC ^\markup\center-align{\theModeC} \bar "||" \break
        \theNotesD ^\markup\center-align{\theModeD} \bar "||" \break
        \theNotesE ^\markup\center-align{\theModeE} \bar "||" \break
        \theNotesF ^\markup\center-align{\theModeF} \bar "||" \break
        \theNotesG ^\markup\center-align{\theModeG} \bar "||" \break
        \theNotesA ^\markup\center-align{\theModeA} \bar "||" \break
        \theNotesB ^\markup\center-align{\theModeB} \bar "||" \break
      }
      \addlyrics {
        \theLyricsC |
        \theLyricsD |
        \theLyricsE |
        \theLyricsF |
        \theLyricsG |
        \theLyricsA |
        \theLyricsB |
      }
    }
  >>
}

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
      \theChordC |
      \theChordD |
      \theChordE |
      \theChordF |
      \theChordG |
      \theChordA |
      \theChordB |
      \theChordExtra |
    }
    \new Staff \with {
      instrumentName = "I"
      shortInstrumentName = "II"
    }{
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble {
        \skip \ff
        \theNotesC ^\markup\center-align{\theModeC} \bar "||" \break
        \theNotesD ^\markup\center-align{\theModeD} \bar "||" \break
        \set Staff.shortInstrumentName = "III"
        \theNotesE ^\markup\center-align{\theModeE} \bar "||" \break
        \set Staff.shortInstrumentName = "IV"
        \theNotesF ^\markup\center-align{\theModeF} \bar "||" \break
        \set Staff.shortInstrumentName = "V"
        \theNotesG ^\markup\center-align{\theModeG} \bar "||" \break
        \set Staff.shortInstrumentName = "VI"
        \theNotesA ^\markup\center-align{\theModeA} \bar "||" \break
        \set Staff.shortInstrumentName = "VII"
        \theNotesB ^\markup\center-align{\theModeB} \bar "||" \break
        \set Staff.shortInstrumentName = \theRomanExtra
        \theNotesExtra ^\markup\center-align{\theModeExtra} \bar "||" \break
      }
      \addlyrics {
        \theLyricsC |
        \theLyricsD |
        \theLyricsE |
        \theLyricsF |
        \theLyricsG |
        \theLyricsA |
        \theLyricsB |
        \theLyricsExtra |
      }
    }
  >>
}

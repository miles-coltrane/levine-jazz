\score {
  \midi {
    \tempo 4=160
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
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
      \clef treble
      \relative {
        \skip \ff
        % TODO: automatic right-align
        \sectionLabel \markup \right-align { \theModeC }
        \theNotesC \bar "||" \break
        \sectionLabel \markup \right-align { \theModeD }
        \theNotesD \bar "||" \break
        \sectionLabel \markup \right-align { \theModeE }
        \theNotesE \bar "||" \break
        \sectionLabel \markup \right-align { \theModeF }
        \theNotesF \bar "||" \break
        \sectionLabel \markup \right-align { \theModeG }
        \theNotesG \bar "||" \break
        \sectionLabel \markup \right-align { \theModeA }
        \theNotesA \bar "||" \break
        \sectionLabel \markup \right-align { \theModeB }
        \theNotesB \bar "||" \break
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

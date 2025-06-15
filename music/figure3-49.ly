\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/sus.ly"
\score {
  \midi {
    \tempo 4=120
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
      \set chordNameExceptions = #susExceptions
      r4 | ef2.:maj7.3- | af/ef | ef:maj7.3- | ef:sus9-
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \partial 4 gf'8 gf8 |
          <<
            { \tuplet 3/2 {d8 bf8 d8} f4. f8 }
            \new Voice { \voiceTwo gf,2. }
          >> |
          <<
            { \tuplet 3/2 {ef'8 c8 ef8} f4. ef8 }
            \new Voice { \voiceTwo af,2. }
          >> |
          <<
            { d16 bf d ef \tieUp bf2~ }
            \new Voice { \voiceTwo gf2. }
          >> |
          <ff af bf>2.
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        \partial 4 r4 | ef,2. | ef, | ef, | ef,
        \bar "||"
      }
    }
  >>
}

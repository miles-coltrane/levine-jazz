\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
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
      g2:min g:sus9- | g2:min g:sus9- |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          <<
           {
           d'4~ \tuplet 3/2 {d8 c8 bf8}
           c4~ \tuplet 3/2 {c8 d8 f8}
           }
           \new Voice {\voiceTwo <a, bf>2 <g af>2 }
          >> |
          <<
           {
           d'4~ \tuplet 3/2 {d8 c8 bf8}
           }
           \new Voice {\voiceTwo <a bf>2 }
          >> <g af c>2
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        r8 g,8 g,4 r8 g,8 g,4|
        r8 g,8 g,4 r8 g,8 g,4|
        \bar "||"
      }
    }
  >>
}

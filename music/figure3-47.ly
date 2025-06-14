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
      a1:min7 | d:sus9- | g:maj7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \skip \f % spacer to set voice volume
        <<
          {c''4\rest d'' d'' d''}
          \new Voice {\voiceTwo c'1}
        >> |
        d''8 c''8 g' ef' d'4 c''8 <d'~ fs'~ b'~>8 |
        <d' fs' b'>1
        \bar "||"
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          <a, f'>1 |
          <d~ ef~ g~ a~>2.
          \stemUp <d ef g a>8 g,8~ |
          g1
          \bar "||"
        }
      }
    }
  >>
}

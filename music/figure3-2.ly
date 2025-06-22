\version "2.24.4"
\include "include/prologue.ly"
\score {
  \midi {
    \tempo 4=140
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
      \override SpacingSpanner.spacing-increment = 4
    }
    indent = 0\mm
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \skip \ppp % spacer to set voice volume
      d1:min7 | r\breve
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      {
        \skip \fff % spacer to set voice volume
        \partial 1
        <<
          \set fingeringOrientations = #'(right)
          <e'\ninth g'\eleventh b'\thirteenth>1
          \new Voice { \voiceTwo
            \set fingeringOrientations = #'(left)
            <d'\root f'\third a'\fifth c''\seventh>1
          }
        >>
        \bar "||"
        \sectionLabel \markup { "  D Dorian mode" }
        d'4
        e'
        f'
        g'
        a'
        b'
        c''
        d''
        \bar "||"
      }
      \addlyrics {
        "" root "9th" "3rd" "11th" "5th" "13th" "7th" "root"
      }
    }
    >>
  }
}

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
  {
    <<
    \new Staff \with { instrumentName = "melody" } {
      \set Staff.midiInstrument = "trumpet"
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble {
        \relative {
          \skip \ffff
          d'2. | e8 b4 e4 g8 | \tuplet 3/2 {a8 bf g} a2 | d8 b8~ b2 | \break
          r4 r8 d,4. | e8 b4 d4 g8 | \tuplet 3/2 {a8 bf g} a2  | c4\marcato d2
          \bar "||"
        }
      }
    }
    \new PianoStaff \with { instrumentName = "piano" } <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      ef2.:maj7 | f:maj7 | bf:maj7 | c:maj7 | \break % TODO: want "Δ ♯4" on every chord
      ef:maj7 | f4.:maj7  bf:maj7 | g:maj7 af:maj7 | bf4:maj7 c2:maj7 % TODO: want "Δ ♯4" on every chord
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 3/4
      \clef treble {
        \skip \f % spacer to set voice volume
        <g a d'>2. | <a b e'> | <d' e' a'> | <e' fs' b'> |\break
        <g a d'>2. | <a b e'>4. <d' e' a' >4. | <b cs' fs'>4. <c' d' g'>4. | <d' e' a'>4 <e' fs' b'>2
        \bar "||"
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        ef,2. | f, | bf, | c | \break
        ef, | f,4. bf,4.| g,4. af,4. | bf,4 c2
        \bar "||"
      }
    }
    >>
    >>
  }
}

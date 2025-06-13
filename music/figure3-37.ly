\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/sus.ly"
\include "include/thirds.ly"
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
      g1:sus
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \set fingeringOrientations = #'(left right)
          <c'\fourth f a b\third>1 \bar "||"
          <f b\third d> \bar "||"
          <f b\third e> \bar "||"
          <b\third e a> \bar "||"
          r2 <c\fourth f b\third> \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \skip \f % spacer to set voice volume
        \set fingeringOrientations = #'(right)
        <f, g>1\bar "||"
        <g c'\fourth>1\bar "||"
        <g c'\fourth>1\bar "||"
        <g c'\fourth f'>1\bar "||"
        <<
        {
          d2\rest \stemUp<a d' g'>2
        }
        \new Voice { \voiceTwo
          \set Staff.pedalSustainStyle = #'mixed
          g,1\sustainOn
        }
        >>
      }
    }
  >>
}

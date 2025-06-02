\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/slash.ly"
\score {
  \midi {
    \tempo 4=180
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    % TODO: increase space between staves
    \context {
      \Staff
      \override StaffGrouper.staff-staff-spacing.padding = #3
      \override StaffGrouper.staff-staff-spacing.basic-distance = #12
    }
    indent = 0\mm
  }
  {
    <<
    \new ChordNames \chordmode {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      f1:min7 | bf:min7 | ef:7 | af:maj7 | df:maj7 | d2:min7 g:7 | c1:maj7 | r
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      % TODO: align text below staff
      % TODO: get text below root names
      \textSpannerDown

      \override TextSpanner.bound-details.left.text = \markup { \upright "chords follow the cycle of 5ths from F to D♭" }
      s1_\markup{F......}\startTextSpan |
      s_\markup{B\flat......} |
      s_\markup{E\flat......} |
      s_\markup{A\flat......} |
      s_\markup{D\flat......}\stopTextSpan |

      \override TextSpanner.bound-details.left.text = \markup { \upright "and then from D to C" }
      s2_\markup{D...}\startTextSpan s2_\markup{G...} |
      s1_\markup{C} |
      s\stopTextSpan
    }
    >>
  }
}

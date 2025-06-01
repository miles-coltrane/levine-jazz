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
      \partial 4 g4:7 | \repeat volta 2 {
        c1:maj7 | c1:maj7 | c:min7 | f:7 | g:maj7 |
        g:maj7 | bf:min7 | ef:7 | a:min7 | d:7 |
        \alternative {
          \volta 1 { b:min7 | e:min7 | a:7 | a:7 | a2:min7 d:7 | d:min7 g:7 | }
          \volta 2 { fs2:min7 b:7  | e1:min7 | a:7 | a2:min7 d:7 | g1:maj7 | d2:min7 g:7 | }
        }
      }
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      % TODO: align text below staff
      \textSpannerDown
      \partial 4 s4-\markup{V}_\markup{in C}\startTextSpan  |
      \repeat volta 2 {
        s1-\markup{I}\stopTextSpan | s |
        s-\markup{II}_\markup{in B♭}\startTextSpan | s-\markup{V}\stopTextSpan |
        s-\markup{I}_\markup{in G} | \break
        s | s-\markup{II}_\markup{in A♭}\startTextSpan | s-\markup{V}\stopTextSpan |
        s-\markup{II}_\markup{in G}\startTextSpan | s-\markup{V}\stopTextSpan | \break
        \alternative {
          \volta 1 {
            s-\markup{II}_\markup{in A} | s-\markup{II}_\markup{in D}\startTextSpan | s-\markup{V}\stopTextSpan | s |
            s2-\markup{II}_\markup{in G}\startTextSpan s-\markup{V}\stopTextSpan | s-\markup{II}_\markup{in C}\startTextSpan s-\markup{V}\stopTextSpan |
            \break
          }
          \volta 2 {
            s2-\markup{II}_\markup{in E}\startTextSpan s-\markup{V}\stopTextSpan |
            s1-\markup{II}_\markup{in D}\startTextSpan | s-\markup{V}\stopTextSpan |
            s2-\markup{II}_\markup{in G}\startTextSpan s-\markup{V} | s1-\markup{I}\stopTextSpan |
            s2-\markup{II}_\markup{in C}\startTextSpan s2-\markup{V}\stopTextSpan \fine }
        }
      }
    }
    >>
  }
}

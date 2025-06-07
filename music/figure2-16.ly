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
        r | bf:min7 | ef:7 | a:min7 | d:7 |
        \alternative {
          \volta 1 { b:min7 | e:min7 | a:7 | a:7 | a2:min7 d:7 | d:min7 g:7 | }
          \volta 2 { fs2:min7 b:7  | e1:min7 | a:7 | a2:min7 d:7 | g1:maj7 | d2:min7 g:7 | }
        }
      }
    }
    <<
      \new Staff {
        \key c \major
        \numericTimeSignature
        \time 4/4
        \clef treble
        \partial 4 s4  |
        \repeat volta 2 {
          s1 | s | s | s | s | \break
          s | s | s | s | s | \break
          \alternative {
            \volta 1 { s | s | s | s | s2 s | s s | \break }
            \volta 2 { s2 s | s1 | s | s2 s | s1 | s2 s2 \fine }
          }
        }
      }
      \new Lyrics \with {
          \override LyricText.self-alignment-X = #LEFT
      } \lyricmode {
        \repeat volta 2 {
          \markup \left-column { "V   -" "in C" }4 |
          "I"1 |
          ""1 |
          \markup \left-column { "II   -   -   -" "in B♭" }1 |
          "V"1 |
          \markup \left-column { "I" "in G" }1 | \break
          ""1 |
          \markup \left-column { "II   -   -   -" "in A♭" }1 |
          "V"1 |
          \markup \left-column { "II   -   -   -" "in G" }1 |
          "V"1 | \break
          \alternative {
            \volta 1 {
              \markup \left-column { "II" "in A" }1 |
              \markup \left-column { "II    -    -" "in D" }1 |
              "V"1 |
              ""1
              \markup \left-column { "II    -" "in G" }2 "V"2 |
              \markup \left-column { "II    -" "in C" }2 "V"2 | \break
            }
            \volta 2 {
              \markup \left-column { "II    -" "in E" }2 "V"2 |
              \markup \left-column { "II   -   -   -" "in D" }1 |
              "V"1 |
              \markup \left-column { "II    -" "in G" }2 "V    -"2 |
              "I"1 |
              \markup \left-column { "II    -" "in C" }2 "V"2 | \break
            }
          }
        }
      }
    >>
    >>
  }
}

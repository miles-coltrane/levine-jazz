\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/chords.ly"
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
      \skip \pppp
      \set chordNameExceptions = #chordsExceptions
      c\breve:maj7.3- |
      d:sus9- | % TODO: want sus not sus4
      ef:maj7.5+ |
      f:7.11+ |
      c\breve:maj7.3-/g |
      a:min7.5- |
      b:alt
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \ff
        \sectionLabel \markup \right-align { \hspace #92 "minor-major" } % TODO: automatic right-align
        c'4 d ef f g a b c \bar "||" \break
        d, ef f g a b c d \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #84 "Lydian augmented" }
        ef, f g a b c d e \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #85 "Lydian dominant" }
        f, g a b c d ef f \bar "||" \break
        g, a b c d ef f g \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #71 "half-dimished (or) Locrian #2" }
        a, b c d ef f g a \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #67 "altered (or) dimished whole-tone" }
        b, c d ef f g a b \bar "||" \break
      }
      \addlyrics {
       "" "" "" "" "" "" "" "" |
       "" "♭9" "" "" "" "" "" "" |
       "" "" "" "♯4" "♯5" "" "" "" |
       "" "" "" "♯11" "" "" "" "" |
       "" "" "" "" "♭5" "♭6" "" "" |
       "" "" "" "" "" "" "" "" |
       "" "♭9" "♯9" "" \markup \center-column {"♯11" "♭5"} \markup \center-column { "♭13" "♯5"} "" "" |
      }
    }
  >>
}

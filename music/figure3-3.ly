\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
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
      c\breve:maj7 | d:min7 | e:sus | f:maj7 | % TODO: want "Esus ♭9" and "FΔ ♯4"
      g:7 | a:min | b:min7.5- | g:sus % TODO: want "A- ♭6" and "G sus"
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \ff
        \sectionLabel \markup \right-align { \hspace #98 "Ionian" } % TODO: automatic right-align
        c'4 d e f^\markup\center-align{"\"avoid\" note"} g a b c \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #97 "Dorian" }
        d, e f g a b c d \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #96 "Phrygian" }
        e, f g a b c d e \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #98 "Lydian" }
        f, g a b c d e f \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #93 "Mixolydian" }
        g, a b c^\markup\center-align{"\"avoid\" note"} d e f g \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #97 "Aeolian" }
        a, b c d e f g a \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #97 "Locrian" }
        b, c^\markup\center-align{"\"avoid\" note"} d e f g a b \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #93 "Mixolydian" }
        g, a b c^\markup\center-align{"no \"avoid\" note"} d e f g \bar "||" \break
      }
      \addlyrics {
       "" "" "" "4th" "" "" "" "" |
       "" "" "" "" "" "" "" "" |
       "" "" "" "" "" "" "" "" |
       "" "" "" "♯4" "" "" "" "" |
       "" "" "" "11th" "" "" "" "" |
       "" "" "" "" "" "" "" "" |
       "" "♭9" "" "" "♭5" "" "" "" |
       "" "" "" "11th" "" "" "" "" |
      }
    }
  >>
}

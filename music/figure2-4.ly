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
      c\breve:maj7 | d:min7 | e:min7 | f:maj7 | g:7 | a:min7 | b:min7.5- % TODO: need f:maj7 sharp-4
    }
    \new Staff {
      \key c \major
      \override Timing.TimeSignature.stencil = ##f
      \time 8/4
      \clef treble
      \relative {
        \skip \ff
        \sectionLabel \markup \right-align { \hspace #96 "C Ionian" } % TODO: automatic right-align
        c'4 d e f g a b c \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #95 "D Dorian" }
        d, e f g a b c d \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #94 "E Phrygian" }
        e, f g a b c d e \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #96 "F Lydian" }
        f, g a b c d e f \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #91 "G Mixolydian" }
        g, a b c d e f g \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #95 "A Aeolian" }
        a, b c d e f g a \bar "||" \break
        \sectionLabel \markup \right-align { \hspace #95 "B Locrian" }
        b, c d e f g a b \bar "||" \break
      }
    }
  >>
}

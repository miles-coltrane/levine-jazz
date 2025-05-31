\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\score {
  \midi { }
  \new Staff {
    \key a-flat \major
    \time 2/2
    \tempo 4=200
    \clef treble
    \repeat volta 2 {
      \relative {
        c''8 e-flat4 b-flat8~ b-flat2
        c8 e-flat8 c8 e-flat8 c-flat8 a-flat8 f8 e-flat8
      }
    }
  }
}

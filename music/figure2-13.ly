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
    \chords {
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      fs2:min7 b:7 | e:min7 a:7 | fs:min7 b:7 | e:min7 a:7
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble {
        \relative {
          \skip \f % spacer to set voice volume
          \tieUp <e' b'~>2
          <<
            { \tuplet 3/2 {\stemUp b'4 fs g} }
            \new Voice { \voiceTwo ds2 }
          >> |
          <<
            { a'4 a4 a8 b8 g4 }
            \new Voice { \voiceTwo e2 cs2 }
          >> |
          <e b'~>2
          <<
            { \tuplet 3/2 {b'4 fs g} }
            \new Voice { \voiceTwo ds2 }
          >> |
          <<
            { a'1 }
            \new Voice { \voiceTwo d,2 cs2 }
          >>
          \bar "||"
        }
      }
    }
    \new Staff {
      \clef bass {
        \relative {
          \skip \f % spacer to set voice volume
          % TODO: align text below staff
          % TODO: put II / V above "in key of"
          \textSpannerDown
          \override TextSpanner.bound-details.left.text = \markup { \upright "in key of E" }
          fs,2-\markup{II}\startTextSpan b-\markup{V}\stopTextSpan |
          \override TextSpanner.bound-details.left.text = \markup { \upright "in key of D" }
          e,-\markup{II}\startTextSpan a-\markup{V}\stopTextSpan |
          \override TextSpanner.bound-details.left.text = \markup { \upright "in key of E" }
          fs2-\markup{II}\startTextSpan b-\markup{V}\stopTextSpan |
          \override TextSpanner.bound-details.left.text = \markup { \upright "in key of D" }
          e,-\markup{II}\startTextSpan a-\markup{V}\stopTextSpan |
          \bar "||"
        }
      }
    }
    >>
  }
}

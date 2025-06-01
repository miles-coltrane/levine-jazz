\version "2.24.4"
\language "english"
#(ly:set-option 'crop #t)
\include "include/alt.ly"
\include "include/slash.ly"
\score {
  \midi {
    \tempo 4=100
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
    \new ChordNames \chordmode {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      % TODO: stop display of second slash from the chord names
      d4:min7 d:min7 ef:maj7 ef:maj7 |
      bf,:maj7 bf,:maj7 a,:7 a,:7 |
      bf,:min7 bf,:min7 a,:maj7 a,:maj7 |
      d:7 d:7 ef:maj7 ef:maj7 |
    }
    \new Staff {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \clef treble
      \chordmode {
        \new Voice \with { \consists Pitch_squash_engraver } { \voiceTwo
          \skip \ff % spacer to set voice volume
          \startSlash
          \textSpannerDown
          \textLengthOn % account for text in horizontal spacing
          \override TextSpanner.bound-details.left.text = \markup { \upright "II in C" }
          d4:min7\startTextSpan d:min7\stopTextSpan
          \override TextSpanner.bound-details.left.text = \markup { \upright "V in A♭" }
          ef:maj7\startTextSpan ef:maj7\stopTextSpan
          |
          \override TextSpanner.bound-details.left.text = \markup { \upright "I in B♭" }
          bf,:maj7\startTextSpan bf,:maj7\stopTextSpan
          \override TextSpanner.bound-details.left.text = \markup { \upright "V in D" }
          a,:7\startTextSpan a,:7\stopTextSpan
          |
          \override TextSpanner.bound-details.left.text = \markup { \upright "II in A♭" }
          bf,:min7\startTextSpan bf,:min7\stopTextSpan
          \override TextSpanner.bound-details.left.text = \markup { \upright "I in A" }
          a,:maj7\startTextSpan a,:maj7\stopTextSpan
          |
          \override TextSpanner.bound-details.left.text = \markup { \upright "V in G" }
          d:7\startTextSpan d:7\stopTextSpan
          \override TextSpanner.bound-details.left.text = \markup { \upright "I in E♭" }
          ef:maj7\startTextSpan ef:maj7\stopTextSpan
          \stopSlash
        }
        \bar "||"
      }
    }
    >>
  }
}

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d2:min7 g:7 | e4:7.9+ a:7 d:7.9+ g:7 |
}
theTreble = \relative {
  <<
    {
      \stemUp c''4 a4 f8 e d \tieUp g~ |
      g4
    }
    \new Voice { \voiceTwo
      \stemDown <c, f>2 <a b>4. <gs~ d'~>8 |
      <gs d'>4
    }
  >>
  <g cs fs>4 <fs c' f> <f b e>
  \bar "||"
}
theBass = \relative {
  d,2 <g f'>4. e8~ | e4 a d, g |
  \bar "||"
}
theLyrics = \lyricmode {
  II V
  \markup \left-column { "     III" "     V of " }
  \markup \left-column { "VI" "V of " }
  \markup \left-column { "II" "V of " }
  \markup \left-column { "V" "V" }
}

\include "include/dual+lyrics.ly"

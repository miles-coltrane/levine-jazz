\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  a1:min7 | d:7.9- | g:sus
}
theTreble = {
  <<
    {d'4 d' d' d'}
    \new Voice {\voiceTwo <g c'>1 }
  >> |
  <fs c' d'>4 <a d' fs'> <c' f' a'> <ef' af' c''>|
  <c' f' a' b'>1
  \bar "||"
}
theBass = {
  a1 | d,4 ef fs a | g1
  \bar "||"
}
theLyrics = \lyricmode {
  \override Lyrics.LyricText.self-alignment-X = #LEFT
  ""1
  \markup\left-align\left-column {\small "chords move up" \small "by minor 3rds"}1
}

\include "include/dual+lyrics2.ly"

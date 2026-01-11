\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  d1:min7 | g:7  | d:min7 | g:7
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.3
  d'8 a' f d  df a' f df |
  c a as b~  b2
  \bar "||"
  a'8 f d a  df a c a |
  b1
  \bar "||"
}

theLyrics = \lyricmode {
  \small
  \override Lyrics.LyricText.self-alignment-X = #CENTER
  "root"8 ""4.  \markup\center-column{"major" "7th"}8 ""4. |
  \markup\center-column{"minor" "7th" "of" "D-7"}8 ""4. \markup\center-column{"3rd" "of" "G7"}8 ""4. |
  ""4 "root"8 ""8  \markup\center-column{"major" "7th"}8 ""8 \markup\center-column{"minor" "7th"}8 ""8 |
  \markup\center-column{"3rd" "of" "G7"}1

}
\include "include/treble-lyrics.ly"

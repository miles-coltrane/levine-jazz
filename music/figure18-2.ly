\version "2.24.4"
\include "include/prologue.ly"

% Stella By Starlight, Victor Young
theTempo = 120
theKey = c
theSignature = 4/4
theChords = \chordmode {
  r4 | e1:min7.5- | a1:alt | c1:min7 | f1:7.9-
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \partial 4 bf'4
  \bar "||"
  \tieUp
  a1~ |
  a4. g'8 a8 bf4 f8 |
  r8 f4.~ f8 g8 f8 d8~ |
  d1
  \bar "||"
}
theBass = {
  \partial 4 r4
  \bar "||"
  r8 <e a bf d'>4 r8 <e a bf d'>4. <g~ c'~ df'~ f'~>8 |
  <g c' df' f'>1 |
  r8 <ef~ g~ bf~ d'~>4. <ef g bf d'>4.  <ef~ fs~ a~ d'~>8 |
  <ef fs a d'>1
  \bar "||"
}
theLyrics = \lyricmode {
  ""4
  \markup\left-align{\small "melody played as written.."}1
  ""4 \markup\left-align{\small "melody played octave up from where written ..."}\breve
}

\include "include/dual+lyrics.ly"

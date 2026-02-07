\version "2.24.4"
\include "include/prologue.ly"

% Just Like A Butterfly Caught In The Rain, Art Tatum, Pablo Solo Masterpieces
theTempo = 160
theKey = c
theSignature = 4/4
theChords = \chordmode {
  c2:maj7 cs:dim
}
theTreble = {
  <<
    {b'4 a'4}
    \new Voice {\voiceTwo <b e'>2 }
  >> \stemUp <g' bf' cs'' e''>2\fermata |
  r1 |
  r4 fs'16 g' a' bf'~ bf'2\fermata
  \bar "||"
}
theBass = \relative {
  c,2 cs4. bf8 |
  c16 d ds e  fs g a bf
  % TODO: after C start "ritard ....."
  c cs ds e  fs g a bf |
  c cs ds e r4 r2
  % TODO: end ritard dots at final rest
  \bar "||"
}

\include "include/dual.ly"

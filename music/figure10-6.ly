\version "2.24.4"
\include "include/prologue.ly"

% All Blues, Miles Davis, Kind of Blue
theTempo = 140
theKey = c
theSignature = 3/4
theChords = \chordmode {
  g2.:7 | r | r | r | r | r | r | r |
  c:sus4| r | r | r | g:7 | r | r | r |
  d:7.9+ | r | ef:7.9+  | d:7.9+ | g:7 | r | r | r
}
theTreble = \relative {
  <b e g>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. | \break
  <d f a c>2.|
  <d f a c>2.|
  <d f a c>2.|
  <d f a c>2.|
  <b e g>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. | \break
  <c f a>2. |
  <c f a>2. |
  <df gf bf>2. |
  <c f a>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. |
  <b e g>2. | \break
  \bar "||"
}
theBass = {
  <g, f>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. | \break
  <c bf>2. |
  <c bf>2. |
  <c bf>2. |
  <c bf>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. | \break
  <d fs>2. |
  <d fs>2. |
  <ef g>2.
  <d fs>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. |
  <g, f>2. | \break

  \bar "||"
}

\include "include/dual-aligned.ly"

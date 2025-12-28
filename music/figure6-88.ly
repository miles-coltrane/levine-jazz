\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = f
theSignature = 4/4
theChords = \chordmode {
  f1:maj7 | g:min7 | a:min7.5- | d:7.9- |
  af2:min7 df2:7 | g2:min7.5- c2:alt | f1:maj7.11+ |
  g2:min7 c2:alt | f1:maj7 | g2:min7 c2:7 |
  a1:min7.5- | d1:7.9- | af2:min7 df2:7 |
  g2:min7.5- c2:alt | f1:maj7 | r1 |

  b1:min7 | e:7 |a:maj7.11+ | r1 |
  g2:min7 f2:min7 | ef1:min7 | f2:min7.5- b2:alt |
  g2:min7 c2:alt | f1:maj7 | g2:min7 c2:7 |
  a1:min7.5- | d1:7.9- | af2:min7 d2:7 |
  g2:min7.5- c2:alt | f1:maj7.11+ | g2:min7 c2:alt|

  f1:maj7 | g2:min7 c2:7 | a1:min7.5- | d1:7.9- |
  af2:min7 df2:7 | g2:min7.5- c2:alt | f1:maj4.11+ |
  g2:min7 c2:alt | f1:maj7 | g2:min7 c2:7 |
  a1:min7.5- | d1:7.9- | a2:min7 df2:7 |
  g2:min7.5- c2:alt | f1:maj7| r1 |

  b1:min7 | e1:7  | a1:maj7.11+ |
  a1:maj7.11+| g2:min7 f:min7 |ef1:min7 |
  fs2:min7.5- b2:alt | g2:min7 c2:alt | f1:maj7 |
  g2:min7 c2:7 | a1:min7.5- | d:7.9- | af2:min7 df2:7 |
  g2:min7.5- c2:alt | f1:maj7.11+ | r1 |

  f1:maj7 | g2:min7 c2:7 | a1:min7.5- |
  d1:7.9- | af2:min7 df2:7 | g2:min7.5- c2:alt |
  f1:maj7 | g2:min7.5- c2:alt | f1:maj7 |
  g2:min7 c2:7 | a1:min7.5- |
  d1:7.9- | af2:min7 df2:7 | g2:min7.5- c2:alt |

  f1:maj7 | r1 | b1:min7 |
  e1:7 | a:maj7.11+ | r1 |
  g2:min7 f2:min7 | ef1:min7 | fs2:min7.5- b2:alt| g2:min7 c2:alt |
  f1:maj7| g2:min7 c2:7 | a1:min7.5- d1:7.9- | af2:min7 df2:7 |
  g2:min7.5- c2:alt | f1:maj7 | g2:min7 c2:alt | f1:maj7
}

theTreble = \relative {
  \override Parentheses.font-size = #1.7
  r1 |
  bf'8 c gs a f c e f |
  r1 |
  r2 ef'8 gf df cf | \break
  bf4 af4 r2 |
  a4 c8 cf8 bf d, f a |
  \tuplet 3/2 {af bf af} gf e ef df c bf | \break
  a8 c e g e f a c \bar "||"
  d d ef e f d bf a |
  gs b e ds r4 r8 bf | \break
  a4 r4 r2 |
  \tuplet 3/2 {gf8 af gf} f ef d c bf gf |
  r1 | \break
  s1 |
  s2  s2 |
  s2 e'8 ef8 d df | \break

  \pageBreak

  b8 cs d e f g af bf| b cs d e f d e c | b4 a8 gs r8 fs8 e4~ | e1 | \break
  r8 d' \tuplet 3/2 {bf a g} c af g f | bf gf f ef fs gs a4 | af8 gf f ef d f a c | \break
  g8 bf d4 gs8 a f d \bar "||" fs g e4 ds8 e g e | f d bf a {\parenthesize g4} d'8 cs8 | \break
  <c d>4 r4 r2 | f,8 af bf c ef f af bf | df4 bf8 gf8~ gf4 c8 cf8 | \break
  bf8 d, f a g4. c,8 | g'4 f8 c8 r2 | r4 r8 a'8 bf a gs a \bar "||" \break

  \pageBreak

  c4 r8 a8 f4. a8 | g4 r8 e8 c4 e8 c8 | d8 b g e a2 | r1 | \break
  df8 bf gf ef af4 af8 cf8 | ef gf f4 ef4. ef16 df16 | c8 bf a g c4 a8 c8 | \break
  bf8 d,4 a'8 af e ef df \bar "||" c d e g af bf c ef| df ef f af gf af bf df | \break
  d b f4 b8 d, g b | bf4 af8 gf f ef d c | df c cf df bf4 c8 cf8 | \break
  bf8 d, f a af e ef df| c4 g'8 f8 e f a {\parenthesize c} | e f~ f4 r2 \bar "||"

  \pageBreak

  r8 d8 \tuplet 3/2 {fs gs cs} d, fs gs cs | <d, e>8 fs gs cs fs, cs' \tuplet 3/2 {gs fs d} | cs fs \tuplet 3/2 {e cs b} e cs b a | \break
  gs' a gs fs f ef d b | r8 d4. c8 af g f | bf4. ef8 f, b c ef | \break
  gs e cs a gs4 gf8 f' | r8 d8 bf4 ef4 ef8 df \bar "||" c2 f4. gs8 | \break
  a8 gs {\parenthesize b4} f4 f4 | r1 | b8a af gf f ef d4 | gf4 f8 d8 ef cf bf af | \break
  g8 gf f ds e df' bf f | c' a f d <c g'>4 <d f>4 | r2 r4 \tuplet 3/2 {c''8 cf bf} \bar "||"

  \pageBreak

  a8 f d c f2 | f4 g8 a8 r8 g8 f4 | d'8 b g d a' fs d b | \break
  e cs a gs b gs e b | gf' ef cf gf df' bf gf4 | s1 | \break
  s1 | s1 \bar "||" s1 | \break
  s1 | s2 s4 ds'16 e fs b | \break
  d8 b \tuplet 3/2 {a af gf} f ef d16 f a c| cf4 r4 r2 | r2 cs8 d ds e | \break

  \pageBreak

  \set Staff.ottavationMarkups = #ottavation-simple-ordinals
  f4. g8 r8 e f c | a g f4 f8 g a c | b cs e fs b cs e fs | \break
  \ottava 1 b, cs e fs cs fs e cs | \noBreak a e' cs b a b fs as \ottava 0 | \noBreak
  gs fs e ds cs4 cs4 | \break
  d'4. bf8 a2 | f8 bf c f bf,4 c8 bf8 | b bf a cs gs4. gs16 gf16 | f4 r4 r2 \bar "||" \break
  r2 c4 r8 gs'8 | a gs a4 f4 f | r2 r8 c f gs | a gs a4 f4 r4 | r8 ef8 gf bf cf4 r8 c,8 | \break
  f8 a bf4 r2 | a2 b4 c8 <b c>8 | bf d, f a af e ef df \bar "||" c8 f8~ f2.

  \bar "|."
}
theBass = {
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 \bar "||" s1 | s1 |
  s1 | s1 | r8 ef8 d4 df'4 bf8 df8 |
  c'8 cf'8 bf4 e8 a gs a |
  ef8 df c bf, a, c e g | d f a c' s2 \bar "||"

  \pageBreak

  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 \bar "||" s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s1 \bar "||"

  \pageBreak

  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 \bar "||" s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s1 \bar "||"

  \pageBreak

  s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 \bar "||" s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 \bar "||"

  \pageBreak

  s1 | s1 | s1 |
  s1 | s1 | bf8 d4 a8 af e ef df |
  c d e g d4 r4 | d8 f a c' bf d f a | af e ef df \tuplet 3/2 {c d e} \tuplet 3/2 {f g af} |
  \tuplet 3/2 {a af gf} \tuplet 3/2 {f e ef} \tuplet 3/2 {d f c'} \tuplet 3/2 {cf' bf d} |
    \tuplet 3/2 {f a af} \tuplet 3/2 {g g a} \tuplet 3/2 {bf c' d'} s4 |
  s1 | s1 |  s1 |

  \pageBreak

  s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s1 | s1 \bar "||"
  s1 | s1 | s1 | s1 | s1 |
  s1 | s1 | s1 \bar "||" s1
  \bar "|."
}

theLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  ""1 | ""1 | ""1 | ""2  "A♭-7 - - - - - -"2 | \break
  "- - - - - -"2 ""2 | "G-7 - - - - - - - - - - - - - - - - - "1 | "C7alt - - - - - - - - - - - - - - - - - -"1 | \break
  "FΔ - - - - - - - - - - - - - - - -"1  \bar "||" "G-7 - - - - - - - - - - - - - - -"1  | "EΔ? - - - - - - - - - - - - - - -"1 | \break
  ""1 | "D7alt - - - - - - - - - - - - - -"1 | "D7alt - - -"1 | \break
  ""1 | "C7alt - - - - -"2 "FΔ - - - - - -"2 | ""1

  \pageBreak

  ""2 \markup{"E7" \super "♭9" "- - - -"}2 | "- - - - - - - - - - - - - - - - - -"1 | ""1 | ""1 | \break
  "sequence - - - - "1 | "- - - - - -"2 "F♯-7 - - - -"2 | "D7alt - - - -"2  "G-7 - - - - -"2 | \break
  "- - - - - - - -- - - - -"1 \bar "||" ""1 | ""1 | \break
  ""1 | \markup\left-column{"D7 alt - - - - - - - - - - - - - - - -" "A♭ pentatonic scale - - - - - -"}1 | "A♭-7 - - - - - -"2. "Gø - - -"4 | \break
  ""1 | ""1 | ""1 |

  \pageBreak

  \markup\left-column{
    "F major triad - - - - - - -"
    "sequence - - - - - - - - - - - -"
  }1 |
  \markup\left-column{
    "C major triad - - - - - - "
    "- - - - - - - - - - - - - - - - -"
  }1 |
  \markup\left-column{
    "E-7 - - - - - -"
    "- - - - - -"
  }1 |
  "" 1 | \break
  ""1 "A♭-7"4 "D♭7 - - - - - - -"2. |
  "FΔ - - - - - - - - - - - - - - -"1 | \break
  ""1 |
  \markup\left-column{
    "C major - - -"
    "sequence takes"
  }2
  \markup\left-column{
    "A♭ major - - -"
    "Mulgrew outside - -"
  }2 |
  \markup\left-column{
    "D♭ major - - -"
    "- - - - - - - - - - -"
  }2
  \markup\left-column{
    "G♭ major - - -"
    "- - - - - - - - - - -"
  }2 | \break
  "G major - - - - - - - - - - - - -"1 |
  "D7alt - - - - - - - - - - - - - -"1 |
  ""2. "Gø - - -"4 |
  ""1 | ""1 | ""1

  \pageBreak

  ""1 | ""1 | "A pentatonic scale - - - - - - " |
  \markup{"D7" \super "♭9" "- - - - - - - - - - - - - - - -"}1 | ""1 | ""1 |
  "F♯-7 - - - - - -"2 "B7 - - - -"2 | ""1 | ""1 |
  ""1 | ""1 | ""1 | ""1 |
  ""1 | ""1 | ""1 |

  \pageBreak

  ""1 | ""1 |
  \markup\left-column{
    "G triad - - -"
    "sequence takes"
  }2
  \markup\left-column{
    "B-7 - - - - - - -"
    "Mulgrew outside - -"
  }2 |
  \markup\left-column{
    "F♯-7 - - - - - - -"
    "- - - - - - - - - - - - - -"
  }2
  \markup\left-column{
    "E triad - - - - - - -"
    "- - - - - - - - - - - - -"
  }2 |
  \markup\left-column{
    "C♭ triad"
    "and back inside"
  }2 "G♭ triad"2 |
  ""1 |
  ""1 | ""1 | "C7alt - - - -"2 "FΔ - - - - - - - - "2 |
  "D7alt - - - - - - - - - - - - - - - - - - - - - - - - - - - -" 1 |
  "- - - -"4 "G-7 - - - -"2 \markup{"D7" \super "♭9" "- - -"}4 |
  ""1 | ""1 | ""1 |

  \pageBreak

  ""1 | ""1 | "A pentatonic scale - - - - - - - - -"1 |
  "- - - - - - - - - - - - - - - - - - - -" 1 |
  "- - - - - - - - - - - - - - - - - - -" 2. ""8 "BΔ-"8 |
  "- - - - - - - - - - - - - - - - - - - -"1 |
  ""2 "G-7 - - -"2 | "F-7 - - - - "2 "Eb-7 - - - -"2 |
  "F♯-7 - - - - -" 2 "B7 - - - - - "2 | ""1 |
  ""1| ""1| ""1| ""1| ""1|
  ""1| ""2 \markup{"FΔ" \super "♯4" "- - - -"}2| ""1| ""1| }

\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
    }
    indent = 0\mm
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \ppp % spacer to set voice volume
      \theChords
    }
    <<
      \new Staff {
        \key \theKey \major
        \numericTimeSignature
        \time \theSignature
        \clef treble {
          \skip \f % spacer to set voice volume
          \theTreble
        }
      }
      \new Lyrics {
        \theLyrics
      }
    >>
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \theBass
      }
    }
  >>
}

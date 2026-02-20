\version "2.24.4"
\include "include/prologue.ly"

% Wingspan, Mulgrew Miller, Wingspan
theTempo = 125
theKey = f
theSignature = 4/4
theChords = \chordmode {
  \repeat volta 2 {
    r1 | r1 | r1 |
    \alternative {
      \volta 1 { r1 }
      \volta 2 { r2. e8:dim f8 }
    }
    |
  }
  r4*16 |
  \repeat volta 2 {
    f1:maj7 | g2:min7 c2:7 |
    a1:min7.5- | d:7.9- | af2:min7 df:7 |
    \alternative {
      \volta 1 {
        g2:min7.5- c2:alt |
        f1:maj7.11+ | g2:min7.5- c2:alt |
      }
      \volta 2 {
        g2:min7.5- c2:alt | f1:maj7 | r1 |
      }
    }
  }
  b1:min7 | e:1 | a:maj7.11+ | r1 |
  g2:min7 f2:min7 | ef1:min7 | fs2:min7.5- b2:alt | g2:min7 c2:alt |
  f1:maj7 | g2:min7 c2:7 | a1:min7.5- | d1:7.9- |
  a2:min7 df2:7 | g2:min7.5- c2:alt | f1:maj7 | r1
}
theTreble = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2
  \repeat volta 2 {
    \bar ".|:"
    r4^\markup{"C pedal"} r8 <c'' f>4 <ef af> <c f>8 |
    <a d>4 <b e>4 <e, a>4 <fs b>4 |
    <d g>4 <e a>8 <cs~ fs~>8 <cs~ fs~>2 |
    \alternative {
      \volta 1 {<cs fs>1 | \break}
      \volta 2 {<cs fs>2. e8 f8 }
    }
    \bar "||"
  }
  \compressMMRests {
    \textLengthOff
    \override MultiMeasureRestNumber.stencil = ##f
    \override Staff.MultiMeasureRest.space-increment = 6
    % TODO: expand horizonal rest line
    R4*16^\markup{"4 bar drum solo"}
  }

  \sectionLabel\markup\box{\fontsize #4 "A"}
  \repeat volta 2 {
    r8 c8 d e g e \tuplet 3/2 {f a c} |
    e ef d df c bf gf e | \break
    c' g ef c gf' af f ef~ |
    ef1 |
    df'4 c8 cf8 r8 df bf gf |
    \alternative {
      \volta 1 {
        af8 f ef4 ef4  df8 cf8~ | \break
        cf1 |
        r8 c8 \tuplet 3/2 {f fs b} af e df ef
      }
      \volta 2 {
        af8 f df af ef'4 e8 f8~ |
        f1~ |
        f1
      }
    }
  }
  \bar "||" \break
  \sectionLabel\markup\box{\fontsize #4 "B"}
  r4 r8 e'8~ e ef d e |
  f g e cs d b g e |
  ef4. af8 ef8 af8 ef4~ |
  ef1 | \break

  r8 c'4. bf8 g ef c |
  af' f af f~ f2 |
  r8 gs8 \tuplet 3/2 { a c ef } g ef d c |
  b df bf gf af e df ef \bar "||" \break

  r8 c8 d e g e \tuplet 3/2 {f a c} |
  e ef d df c bf gf e |
  c' g ef c gf' af f ef~ |
  ef1  | \break

  df'4 c8 cf8 r8 d bf gf |
  af f df af ef'4 e8 f8~ |
  f1~ |
  f1
  \bar "|."
}

% Expand twice so MIDI can get repeats too

\score {
  \midi {
    \tempo 4=\theTempo
  }
  \unfoldRepeats {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \ppp % spacer to set voice volume
      \theChords
    }
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \fff % spacer to set voice volume
        \theTreble
      }
    }
    >>
  }
}

\score {
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
    ragged-last = ##t
  }
  {
    <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set chordNameExceptions = #chordsExceptions
      \skip \ppp % spacer to set voice volume
      \theChords
    }
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \fff % spacer to set voice volume
        \theTreble
      }
    }
    >>
  }
}

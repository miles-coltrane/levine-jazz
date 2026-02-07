\version "2.24.4"
\include "include/prologue.ly"

% Spring Is Here, John Coltrane, The Stardust Session
theTempo = 215
theKey = g
theSignature = 4/4

chordsA = \chordmode {
  c1:7.11+ g1:maj7 c1:7.11+ g1:maj7 | b2:min7 e2:7 a1:min7 |
    b2:min7 e2:7
}
trebleA = {
  <bf d' e' fs'>2. g'8 <g~ b~ e'~>8 |
  <g b e'>1
  <<
    {\stemUp
      fs'8 \tuplet 3/2 {fs'8 fs'8 fs'8} fs'4. g'8
    }
    \new Voice {\voiceTwo
      <bf d' e'>1
    }
  >> |
  <g b e'>4 <g b e'>2. |
  <a d'>2 <gs e'>2 |
  <g c'>1 | \break
  <<
    {\stemUp
      d'8 d'8 d'8 d'8 d'4 e'4
    }
    \new Voice {\voiceTwo
      a2 gs2
    }
  >>
}
bassA = {
  c2.~ c8 <g,~ fs~>8 |
  <g, fs>1 |
  c1 |
  <g, fs>4 <g, fs>2. |
  b,2 <e, d>2 |
  a,1 | \break
  b,2 <e, d>2
}
chordsAOne = \chordmode {
  a2:min7 f2:7 | g1:maj7 | r1 | fs1:min7.5- | g1:7.9- |
  e1:maj7.3- | r1 | bf2:min7 ef2:7 | a2:min7 d2:7
}
trebleAOne = {
  <g c'>2 <ef a c'>2 |
  <<
    {\stemUp
      b4. c'8 d'4 e'4
    }
    \new Voice {\voiceTwo
      <fs g>1
    }
  >> |
  fs'4 g'4 a'4 b'4
  <a c' e'>1 |
  <a c' ef' fs'>1 | \break
  <<
    {\stemUp
      b4 cs'4 ds'4 e'4
    }
    \new Voice {\voiceTwo
      g1
    }
  >> |
  fs'4 g'4 a'4 b'4 |
  <<
    {\stemUp
      df''2. a'8 <c'~ g'~ d''~>8
    }
    \new Voice {\voiceTwo
      <df' af'>2 <df' g'>4. s8
    }
  >> |
  <c' g' d''>2 <e' b' d''>2
}
bassAOne = {
  a,2 f,2 |
  <g,~ d~>1 |
  <g, d>1 |
  fs,1 |
  b,1 |
  <e,~ fs~>1 |
  <e, fs>1 |
  <bf, af>2 <ef g>4. <a,~ g~>8 |
  <a, g>2 <d f c'>2
}



chordsATwo = \chordmode {
  a2:min7 f2:7 |
  g1:maj7 | r1 | bf2:min7 ef2:7 | a2:min7 d2:7 | b2:min7 e2:min7 | a2:min7 d:7 |
  b2:min7 e2:min7 | a2:min7 d2:7 | r4 b2:min7 e4:min7 | a2:min7 d2:7 | g1:6
}
trebleATwo = {
  <g c'>2 <ef a c'>2 |\break
  <<
    {\stemUp
      b4. c'8 d'4 e'4
    }
    \new Voice {\voiceTwo
      <fs g>1
    }
  >> |
  fs'4 g'4 a'4 b'4 |
  <df' af' df''>2 <df' g' df''>2 |
  <c' g' d''>2 <e' b' d''>2 |
  <d' a' d''>2 <g d' g'>2 |
  <c' e' b'>2 <c' e' a'>2 | \break
  r8 <d' a' d''>4 r8 <g d' g'>2 |
  <c' e' b'>4. <c'~ e'~ a'~>8 <c' e' a'>4 r4 |
  r4 <d' a' d''>2 <g d' g'>4 |
  <c' e' b'>2 <c' e' a'>2 |
  <a d' g'>4 r4 r2 | r1
}
bassATwo = {
  a,2  f,2 | \break
  <g,~ d~>1 |
  <g, d>1 |
  <bf, af>2 <ef g>2 |
  <a, g>2 <d fs c'>2 |
  <b, a>2 e,2 |
  <a, g>2 <d fs>2 |\break
  r8 <b, a>4 r8 e,2 |
  <a, g>4. <d~ fs~>8 <d fs>4 r4 |
  r4 <b, a>2 e,4 |
  <a, g>2 <d fs>2 |
  <g, e>4 r4 r2|
  r1
}

theChords = \chordmode {
  \repeat volta 2 {
    \chordsA
    \alternative {
      \volta 1 { \chordsAOne }
      \volta 2 { \chordsATwo }
    }
  }
}
theTreble = {
  \repeat volta 2 { \bar ".|:"
    \trebleA |
    \alternative {
      \volta 1 { \trebleAOne }
      \volta 2 { \trebleATwo }
    }
  }
  \bar "|."
}
theBass = {
  \repeat volta 2 { \bar ".|:"
    \bassA
    \alternative {
      \volta 1 { \bassAOne }
      \volta 2 { \bassATwo }
    }
  }
  \bar "|."
}

expandedTreble = {
  \trebleA
  \trebleAOne
  \trebleA
  \trebleATwo
}
expandedBass = {
  \bassA
  \bassAOne
  \bassA
  \bassATwo
}

\score {
  \midi {
    \tempo 4=\theTempo
  }
  \new GrandStaff <<
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \expandedTreble
      }
    }
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \expandedBass
      }
    }
  >>
}

\score {
  \layout {
    \context {
      \Score
    }
    indent = 0\mm
    ragged-last = ##f
  }
  \new GrandStaff <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      \theChords
    }
    \new Staff {
      \set Score.barNumberVisibility = #first-bar-number-invisible-and-no-parenthesized-bar-numbers
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
      \override Score.SpacingSpanner.spacing-increment = 3
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \theTreble
      }
    }
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \theBass
      }
    }
  >>
}

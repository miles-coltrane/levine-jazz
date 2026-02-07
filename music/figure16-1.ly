\version "2.24.4"
\include "include/prologue.ly"

% Spring Is Here, Richard Rodgers
theTempo = 180
theKey = g
theSignature = 4/4

chordsA = \chordmode {
  g1:dim | g1:6 | g1:dim | g1:6 | b2:min7 e2:7 | a2:min7 d2:7 |
  b2:min7 e2:7
}
trebleA = {
  <<
    {\stemUp
      fs'2. g'4 |
      e'1 |
      \tuplet 3/2 {fs'4 fs'4 fs'4} fs'4 g'4 |
      e'4 e'2. |
      d'2. e'4 |
      c'1
    }
    \new Voice {\voiceTwo
      <g bf>1 |
      <g b>1 |
      <g bf>1 |
      <g b>1 |
      a2 gs2 |
      g2 fs2
    }
  >> | \break
  <<
    {\stemUp
      \tuplet 3/2{d'4 d'4 d'4} d'4 e'4
    }
    \new Voice {\voiceTwo
      a2 gs2
    }
  >>
}
bassA = {
  <g, cs>1 |
  <g, d>1 |
  <g, cs>1 |
  <g, d>1 |
  b,2 e,2 |
  a,2 d,2 | \break
  b,2 e,2
}
chordsAOne = \chordmode {
  a2:min7 d2:7 g1:maj7 | r2 d4:min7 g4:7.9- |
  c1:maj7 | b1:alt | e1:maj7.3- | r1 | a1:7 | a2:min7 d2:7.9-.11+
}
trebleAOne = {
  <<
    {\stemUp
      c'4 c'2.
    }
    \new Voice {\voiceTwo
      g2 fs2
    }
  >> |
  <fs b>4 <e g c'>4 <fs a d'>4 <g b e'>4 |
  <a b fs'>4 <a d' g'>4 <c' f' a'>4 <b e' gs' b'>4 |\break
  <g b e'>1 |
  <d' g'>1
  <<
    {\stemUp
       b4 cs'4
    }
    \new Voice {\voiceTwo
      g2
    }
  >> <fs a ds'>4 <g b e'>4 |
  <a c' fs'>4 <b cs' g'>4 <c' ef' a'>4 <cs' e' b'>4 |
  <cs' fs' cs''>1
  <<
    {\stemUp
      d''1
    }
    \new Voice {\voiceTwo
      <c' g'>2 <ef' af'>2
    }
  >>
}
bassAOne = {
  a,2 d,2 |
  <g, d>1 |
  <<
    {\stemUp d4 e4}
    \new Voice {\voiceTwo g,2}
  >> <d g>4 <g, f>4 | \break
  c1 |
  <b, ds a>1 |
  <<
    {\stemUp b,1 | ds4 e4 fs4 g4}
    \new Voice {\voiceTwo e,1~ | e,2 s2}
  >> |
  <a, g>1 |
  <a, e b>2 <d fs c'>2
}
chordsATwo = \chordmode {
  a2:min7 f2:7 | g1:maj7 | r1 | a1:7 | a2:min7 d2:7.9-.11+ |
  b2:min7 e2:min7 | a2:min7 d2:7.9- | g1:6
}
trebleATwo = {
  <<
    {\stemUp
      c'4 c'2.
    }
    \new Voice {\voiceTwo
      g2 a2
    }
  >> |
  <fs b>4 <e g c'>4 <fs a d'>4 <g b e'>4 |
  <a b fs'>4 <a d' g'>4 <c' ef' a'>4 <d' fs' b'>4 |
  <cs' fs' cs''>1
  <<
    {\stemUp
      d''1
    }
    \new Voice {\voiceTwo
      <c' g'>2 <ef' af'>2
    }
  >> | \break
  <d' a' d''>2 <g d' g'>2 |
  <c' e' b'>2 <c' ef' a'>2 |
  <a~ d'~ g~>1|
  <a d' g>1
}
bassATwo = {
  a,2 <f, ef>2 |
  <g, d>1 |
  <<
    {\stemUp d4 e4 fs4 g4}
    \new Voice {\voiceTwo g,2 s2}
  >> |
  <a, g>1 |
  <a, e b>2 <d fs c'>2 |\break
  <b, a>2 <e, d>2 |
  <a, g>2 <d fs>2 |
  <g,~ e~>1 |
  <g, e>1
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
      \volta 1 { \trebleAOne \break }
      \volta 2 { \trebleATwo }
    }
  }
  \bar "|."
}
theBass = {
  \repeat volta 2 { \bar ".|:"
    \bassA
    \alternative {
      \volta 1 { \bassAOne \break }
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
    ragged-last = ##t
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

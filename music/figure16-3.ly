\version "2.24.4"
\include "include/prologue.ly"

theTempo = 240
theKey = g
theSignature = 4/4

chordsA = \chordmode {
  g1:maj7.5+ | c1/g | g1:maj7.5+ | c1/g  | g1:sus4.9- | c1/g | g1:sus4.9- |
  c2/g c2:min/g | g4:maj7 c4/g g4:maj7 c4/g | g4:maj7.5+ g4:6 fs4:dim/g g4:maj7
}
trebleA = {
  <b ds' fs'>2. g'4 |
  <g c' e'>1 |
  <b ds' fs'>2. g'4 |
  <g c' e'>1 |
  <g af c' d'>2. e'4 |
  <e g c'>1 |
  <g af c' d'>2. e'4 | \break
  <e g c'>2 <ef g c'>2 |
  <d fs b>4 <e g c'>4 <fs a b d'>4 <g c' e'>4 |
  <b ds' fs'>4 <b e' g'>4 <c' ef' fs' a'>4 <d' fs' b'>4 |
}
bassA = {
  <g, fs>1 |
  <g, e>1 |
  <g, fs>1 |
  <g, e>1 |
  g,1 |
  g,1 |
  g,1 | \break
  g,1 |
  g,1 |
  <g, fs>1 |
}
chordsAOne = \chordmode {
  c1/g | g1 |
  g4:maj7 g4:maj7.11+ g4:maj7.5+ g4:6 | g4:maj7.5+ g4:6 g4:dim/g g4:maj7 | a1/g c1:maj7.3-/g
}
trebleAOne = {
  <g c' e'>1 |
  <b d' g'>1 |\break
  <d fs b>4 <fs g cs'>4 <fs b ds'>4 <g b e'>4 |
  <b ds' fs'>4 <b e' g'>4 <c' ef' fs' a'>4 <d' fs' g' b'>4 |
  <e' a' cs''>1 |
  <ef' g' b' d''>1
}
bassAOne = {
  <g, e>1 |
  <g, d>1 | \break
  g,1 |
  <g, fs>1 |
  <g, g>1 |
  <g, g>1
}


chordsATwo = \chordmode {
  a1/g | c1:maj7.3-/g |
  g1:maj7 | c1:maj7.3-/g | g1:maj7 | c1:maj7.3-/g | g1:maj7 | c1:maj7.3-/g |
  g1 | c1:min6/g
}
trebleATwo = {
  <e' a' cs''>1 |
  <ef' g' b' d''>1 | \break
  <fs' g' b' d''>2 <b d' g'>2 |
  <d' ef' g' b'>2 <d' ef' g' a'>2 |
  <fs' g' b' d''>2 <b d' g'>2 |
  <d' ef' g' b'>2 <d' ef' g' a'>2 |
  <fs' g' b' d''>2 <b d' g'>2 |
  <d' ef' g' b'>2 <d' ef' g' a'>2 | \break
  <b d' e' g'>1 |
  r1
}
bassATwo = {
  <g, g>1 |
  <g, g>1 | \break
  <g, g>1 |
  <g, g>1 |
  <g, g>1 |
  <g, g>1 |
  <g, g>1 |
  <g, g>1 | \break
  <g, g>1 |
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

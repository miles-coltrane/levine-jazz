\version "2.24.4"
\include "include/prologue.ly"

% I Hear A Rhapsody
theTempo = 140
theKey = ef
theSignature = 4/4

chordsIntro = { \partial 2. r2. }
trebleIntro = { \partial 2. g'4 a' b' }
bassIntro = { \partial 2. r4 r2 }

chordsA = \chordmode {
    c1:min7 | f2:min7 bf2:7 | ef2:maj7 df2:7 | c2:7 c2:alt |
    f1:min7.5- | bf1:7 | ef1 |
}
trebleA = {
    <<
      { \stemUp d''4 c''4 ef''2~ | ef''2 d''2 | \tuplet 3/2 { bf'4 g'4 af'4} bf'2 | r4 g'4 af'4 bf'4 }
      \new Voice { \voiceTwo <ef' g'>1 | <ef' af'>2 <d' g'>2 | <c' f'>2 <cf' ef'>2 | <bf d'>2 <bf df'>2 }
    >> | \break
    <<
      { bf'4 af'8 cf''8~ cf''2 | r4 d'4 d'4 d'4 | f'4 ef'4 ef'2 }
      \new Voice { \voiceTwo <cf' ef'>1 | s1 | <g c'>1}
    >>
}
bassA = {
    <c bf>1 | f,2 <bf, af>2 | <ef g>2 <df f>2 | <c e>1 | \break
    f,1 | <bf, af>1 | <ef, bf,>1 |
}

chordsBOne = \chordmode { d2:min7 g2:7}
trebleBOne = {
    <<
      {\stemUp r4 g'4 a'4 b'4}
      \new Voice { \voiceTwo <c' f'>2 <b e'>2 }
    >>
}
bassBOne = { d,2 <g, f>2}

chordsBTwo = \chordmode { a2:min7.5- d2:7}
trebleBTwo = {
    <<
      {r1}
      \new Voice { \voiceTwo  <g c' ef'>2 <fs c' d'>2 }
    >>
}
bassBTwo = { a,2 d,2 }

chordsC = \chordmode {
    g1:min | a2:min7.5- d:7.9- | g1:min | c2:min7 f2:7 | bf1 |
    f1:min7 d1:min7.5- g1:7
}
trebleC = {
  <<
    {\stemUp r4 d'4 d'4 d'4 | ef'2. c'4 | ef'4 d'4 d'2~ | d'1 | r4 f'4 f'4 f'4 }
    \new Voice { \voiceTwo <a bf>1 | <g c'>2 fs2 | s2 \stemUp <a bf>2 | \stemDown bf2 a2 | c'1}
  >> | \break
  <<
    {\stemUp af'2. f'4 | c''4 b'4 b'2 | r4 g'4 a'4 b'4 }
    \new Voice { \voiceTwo  <af ef'>1 | <c' f'>1 | <b e'>1}
  >>
}
bassC = {
  g,1 | a,2 d,2 | g,2 <g, e> 2 | <c ef>2 <f, ef>2 | <bf, d g>1 | \break
  f,1 <d af>1 | <g, f>1
}

chordsCoda = \chordmode { r1 }
trebleCoda = { r1 }
bassCoda = { r1 }


theChords = \chordmode {
  \chordsIntro |
  \repeat volta 2 {
    \chordsA
    \alternative {
      \volta 1 { \chordsBOne }
      \volta 2 { \chordsBTwo }
    }
  }
  \chordsC
}
theTreble = {
  \trebleIntro |
  \segnoMark 1
  \repeat volta 2 { \bar ".|:"
    \trebleA |
    \codaMark 1
    \alternative {
      \volta 1 { \trebleBOne }
      \volta 2 { \trebleBTwo }
    }
  }
  \bar "||" \break
  \trebleC
  \bar "||"

  {
    \set Score.currentBarNumber = #-1
    \stopStaff
    s4^\markup\left-align{"D.S. al CODA"} s2.
    \startStaff
  } |
  \set Score.currentBarNumber = #18
  \codaMark 1
  \trebleCoda \bar "|."
}
theBass = {
  \bassIntro |

  \repeat volta 2 { \bar ".|:"
    \bassA

    \alternative {
      \volta 1 { \bassBOne }
      \volta 2 { \bassBTwo }
    }
  }
  \bar "||" \break
  \bassC
  \bar "||"
  {
    \stopStaff
    s4 s2.
    \startStaff
  } |
  \bassCoda \bar "|."
}

expandedTreble = {
  \trebleIntro
  \trebleA
  \trebleBOne
  \trebleA
  \trebleBTwo
  \trebleC
  \trebleA
  \trebleCoda
}
expandedBass = {
  \bassIntro
  \bassA
  \bassBOne
  \bassA
  \bassBTwo
  \bassC
  \bassA
  \bassCoda
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

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 140
theKey = bf
theSignature = 4/4

chordsIntro = \chordmode { r2 f2:7 }
trebleIntro = {
  r4 r8 d'8 <<
    {\stemUp f'8 g'4 f'8}
    \new Voice {\voiceTwo a2 }
  >>
}
bassIntro = { r2 <f, ef>2 }

chordsA = \chordmode {
  bf2:maj7 f2:7.5+ bf1:7 ef1:maj7 c1:min7.5- |
  bf2 bf2:aug | c2:min7 f2:7
}
trebleA = {
  \set Score.currentBarNumber = #1
    <<
      { \stemUp\tieUp
        g'1~ |
        g'4 bf'8 g'8 bf'4. g'8 |
        f'4 f'2. |
        r4 ef'8 d'8 f'4. ef'8
      }
      \new Voice { \voiceTwo
        <c' d'>2 <a df'>2 |
        <af c'>1 |
        <g c'>1 |
        <gf bf>1
      }
    >> | \break
    <<
      { \stemUp
        d'4. d'8 d'4~ \tuplet 3/2 {d'8 c'8 bf8} |
        d'4 d'2 d'8 ef'8
      }
      \new Voice { \voiceTwo
        f2 fs2 |
        <g bf>2 a2
      }
    >>
}
bassA = {
  <bf, a>2 <f, ef>2 | <bf, d>1 | <ef, bf,>1 | c1 | \break
  bf,2 bf,2 | <c ef>2 <f, ef>2
}

chordsBOne = \chordmode {
  bf2:maj7 b2:dim c2:min7 f2:7
}
trebleBOne = {
    <<
      {\stemUp
        f'4. f'8 <af d' f'>2 |
        <bf ef' f'>4. d'8 f'8 g'4 f'8
      }
      \new Voice { \voiceTwo
        <a d'>2 s2 |
        s2 a2
      }
    >>
}
bassBOne = {
  bf,2 b,2 | c2 <f, e>2
}

chordsBTwo = \chordmode {
  bf2:maj7 d2:dim |
  ef2:min9 af2:7
}
trebleBTwo = {
    <<
      { \stemUp
        f'4. f'8 <af b f'>2 | \break
        f'2. f'4
      }
      \new Voice { \voiceTwo
        <a d'>2 s2 | \break
        <gf bf>2 c'2
      }
    >>
}
bassBTwo = {
  bf,2 d,2 | \break
  ef,2 <af, gf>2
}

chordsC = \chordmode {
  df2:maj7 bf2:min7 | ef2:min7 af2:7 | f2:min7 e2:dim | ef2:min7 af2:7 |
  df2:maj7 bf2:min7 | ef2:min7 af2:7 | df2:maj7 df2:dim | c2:7 f2:7
}
trebleC = {
  <<
    {\stemUp
      af'2. af4 |
      <ef' af'>2. f'4 |
      ef'8 ef'4 df'16 c'16 bf8 c'8 df'8 ef'8 |
      s2 c'4 af4
    }
    \new Voice { \voiceTwo
      <bf ef'>2 <af df'>2 |
      df'2 c'2 |
      af2 g2 |
      <gf af>2 gf2
    }
  >> | \break
  <<
    {\stemUp
      af'2. af4 |
      <gf' af'>2. af4 |
      ef'8 df'8 c'8 df'8 ef'4 ef'4 |
      c'4. d'8 f'8 g'4 f'8
    }
    \new Voice { \voiceTwo
      <bf ef'>2 <af df'>2 |
      df'2 c'2 |
      <f bf>2 <e bf>2 |
      <e bf>2 a2
    }
  >>
}
bassC = {
  df,2 bf,,2 | ef,2 <af, gf>2 | f,2 e,2 | ef,2 af,2 | \break
  df,2 bf,,2 | ef,2 <af, gf>2 | df,2 df,2 | c,2 <f, ef>2
}

chordsCoda = \chordmode {
  d2:min7 cs4:min7 fs4:7 | b1:maj7 | c2:min7.5- f2:7 | bf1:maj7
}
trebleCoda = {
  <<
    {\stemUp
      f'4. f'8 <b e' fs'>4 <as e' f'>4 |
      <ds' fs'>1 |
      ef'4. d'16 ef'16 f'4 f'4
    }
    \new Voice { \voiceTwo
      c'2 s2 |
      as1 |
      <gf bf>2 a2
    }
  >> |
  <g c' f'>1
}
bassCoda = {
  d,2 cs,4 fs,4 | b,,1 | c,2 <f, ef>2 | <bf, d>1
}


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
  s1
  \chordsCoda
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
  \bar "||"
  \trebleC
  \bar "||"

  % TODO: get coda mark and errant bar lines onto next line
  {
    \set Score.currentBarNumber = #-1
    \stopStaff
    s4^\markup\left-align{"D.S. al CODA"} s2.
    \startStaff
  } | \break
  \set Score.currentBarNumber = #19
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
  \bar "||"
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
      \override Score.SpacingSpanner.spacing-increment = 2
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

\version "2.24.4"
\include "include/prologue.ly"

theTempo = 95
theKey = df
theSignature = 4/4

chordsA = \chordmode {
  ef2:min7 bf2:7 | ef2:min7 af2:7 | df2:maj7 gf:7 | f2:min7 d2:dim |
  ef1:min7 | c2:min7 f2:7.9-11+ | bf2:min7 ef4:min7 af4:7
}
trebleA = {
  <<
    {\stemUp
      r8 ef'8 f'8 ef'8 <df' f'>4 ef'4 |
      bf'4 bf'2. |
      r8 af'8 bf'8 af'8 bf'4 af'4 |
      ef''4 df''4 c''4 bf'4
    }
    \new Voice {\voiceTwo
      gf2 s2 |
      <df' gf'>2 <c' f'>4 <c' e'>4 |
      <bf ef'>2 <bf ef'>2 |
      <ef' af'>2 <df' e' g'>2
    }
  >> | \break
  <<
    {\stemUp
      r4 df''4 bf'8 gf''4 bf8 |
      <bf ef' f'>2 <gf cf' ef'>2 |
      r8 df'8 ef'8 f'8 af'4 \tuplet 3/2 {af'8 bf'8 e'8}
    }
    \new Voice {\voiceTwo
      <df' g'>2 s2 |
      s1 |
      af2 <df' f'>4 <c' f'>4
    }
  >>
}
bassA = {
  <ef, df>2 <bf af>2 |
  ef,2 <af, gf>2 |
  <df f>2 <gf, ff>2 |
  f,2 e,2 | \break
  ef,1 |
  c2 <f, ef>2 |
  bf,2 <ef gf bf>4 <af, gf>4

}

chordsAOne = \chordmode {
  df2:maj7 bf2:7.9-13-
}
trebleFine = {
  <f af bf df'>2_\markup\left-align{\small\italic "Fine"}
}
bassFine = {
  df,2
}
trebleAOne = {
  \trebleFine
  <cf' gf'>2
}
bassAOne = {
  \bassFine
  <bf, d af>2 | \break
}


chordsATwo = \chordmode {
  df2:maj7 e4:min7 a4:7
}
trebleATwo = {
  <f af bf df'>2 <g b d'>4 <g b cs'>4
}
bassATwo = {
  df,2 e,4 a,4
}

chordsB = \chordmode {
  d2:maj7 e2:min7 d2/fs g4:min7 c4:7 |
  fs4:min7 b4:7 e4:min7 a4:7 | d1:maj7 | d2:min7 g2:7 | e2:min7 ef2:dim |
  d2:min7 g2:7 | c4:7 b4:7 bf4:7 bf4:7.5+
}

keyB = d
trebleB = {
  <<
    {\stemUp
      r8 d'8 e'8 fs'8 a'8 a'4 a'8 |
      d''8 d''4 fs'8 a'4. g'8
    }
    \new Voice {\voiceTwo
      <fs b cs'>2 <g d'>2 |
      <d' a'>2 <bf d' f'>4 <bf d' e'>4
    }
  >> | \break
  <<
    {\stemUp
      fs'4. d'8 <g b d' e'>4 <g b cs'>4 |
      s1 |
      r8 d'8 e'8 f'8 a'8 a'4 g'8 |
      e''8 e''4 b'8 d''8 d''4 a'8
    }
    \new Voice {\voiceTwo
      a4 a4 s2 |
      <fs a>1 |
      <f c'>2 <b e'>2 |
      <g' b'>2 <ef' fs' a'>2
    }
  >> | \break
  <<
    {\stemUp
      c''8 c''4 a'8 b'4 g'4
    }
    \new Voice {\voiceTwo
      <c' f'>2 <b e'>2
    }
  >> |
  <bf d' e'>4 <a cs' ds'>4 <af c' d'>4 <d' gf' bf'>4


}
bassB = {
  d,2 e,2 |
  fs,2 g,4 c4 | \break
  <fs, e>4 <b, ds>4 e,4 a,4 |
  d,1 |
  d,2 <g, f>2 |
  e,2 ef,2 | \break
  d,2 <g, f>2 | c4 b,4 <<
    {s4 af4 }
    \new Voice{ \voiceTwo bf,2 }
  >>
}

theChords = \chordmode {
  \repeat volta 2 {
    \chordsA
    \alternative {
      \volta 1 { \chordsAOne }
      \volta 2 { \chordsATwo }
    }
  }
  \chordsB
}
theTreble = {
  \repeat volta 2 { \bar ".|:"
    \trebleA |
    \alternative {
      \volta 1 { \trebleAOne }
      \volta 2 { \trebleATwo }
    }
  }
  \bar "||"
  \key \keyB \major
  \trebleB
  \bar "||"
}
theBass = {
  \repeat volta 2 { \bar ".|:"
    \bassA
    \alternative {
      \volta 1 { \bassAOne }
      \volta 2 { \bassATwo }
    }
  }
  \bar "||"
  \key \keyB \major
  \bassB
  \bar "||"
}

expandedTreble = {
  \trebleA
  \trebleAOne
  \trebleA
  \trebleATwo
  \trebleB
  \trebleA
  \trebleFine
}
expandedBass = {
  \bassA
  \bassAOne
  \bassA
  \bassATwo
  \bassB
  \bassA
  \bassFine
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
      \override Score.SpacingSpanner.spacing-increment = 3.4
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \theTreble
        \set Score.currentBarNumber = #-1
        \stopStaff
        s4_\markup\left-align{"D.C. al Fine"}
        \startStaff
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

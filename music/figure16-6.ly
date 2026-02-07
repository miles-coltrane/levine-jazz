\version "2.24.4"
\include "include/prologue.ly"

% Body And Soul, John Coltrane, Coltrane's Sound
theTempo = 145
theKey = df
theSignature = 4/4

chordsIntro = \chordmode {
  ef4.:min ef4.:min7 ef4:min7 | s8 af2:8 s4.|
  ef4.:min ef4.:min7 ef4:min7 | s8 af2:8 s4.
}
trebleIntro = {
  <f' f''>4. 4. 4~ |
  8 4.~ 8 <af' f'' af''>4. |
  <f' f''>4. 4. 4~ |
  8 4.~ 8 <bf' ef'' f'' bf''>4. |
}
bassIntro = {
  <gf bf ef'>4. <gf bf d'>4. <gf~ bf~ df'~>4 |
  <gf~ bf~ df'~>8 <gf~ bf~ c'~>4. <gf bf c'>8 <gf bf c' f'>4. |
  <gf bf ef'>4. <gf bf d'>4. <gf~ bf~ df'~>4 |
  <gf~ bf~ df'~>8 <gf~ bf~ c'~>4. <gf bf c'>8 <gf bf c' f'>4. |
}
bassOtherIntro = {
  af,2 af,2 |
  af,4. af,8 af,2 |
  af,2 af,2 |
  af,4. af,8 af,2
}

chordsA = \chordmode {
  ef4.:min ef4.:min7 ef4:min7 | s8 af2:8 s4.|
  ef4.:min ef4.:min7 ef4:min7 | s8 s4. af2:8 |
  df1:/af | f2:aug/af g2:aug/af | f1:min7/af | e2:min7 a2:7 | af1:sus4 | r1 |
  af1:7 | b1:7.11+ | f2:aug/af g2:aug/af | f2:aug/af g2:aug/af | f2:aug/af af2:7.9-
}
trebleA = {
  \mark #1
  <f' f''>4. 4. 4~ |
  8 4.~ 8 <af' f'' af''>4. |
  <f' f''>4. 4. 4~ |
  8 4. <c' f' a'>2 | \break

  <bf ef' af'>1 |
  <f a cs'>2 <g b ds'>2 |
  <ef' g' bf'>1 |
  <d' fs' a'>2 <cs' fs' a'>2 |
  <df' gf' bf'>1 |
  <df' gf' bf'>1 | \break

  <bf c' f'>1 |
  <df' f' af'>1 |
  <f a cs'>2 <g b ds'>2 |
  <f a cs'>2 <g b ds'>2 |
  <f a cs'>2 <a c' f' af'>2
}
bassA = {
  <gf bf ef'>4. <gf bf d'>4. <gf~ bf~ df'~>4 |
  <gf~ bf~ df'~>8 <gf~ bf~ c'~>4. <gf bf c'>8 <gf bf c' f'>4. |
  <gf bf ef'>4. <gf bf d'>4. <gf~ bf~ df'~>4 |
  <gf~ bf~ df'~>8 <gf bf c'>4. <af, gf>2 | \break

  <df f>1 |
  <af, af>1 |
  <f af c'>1 |
  <e g b>2 <a, g>2 |
  <af, af>1 |
  <af, af>1 | \break

  <af, gf>1 |
  <b, ds a>1 |
  <af, af>1 |
  <af, af>1 |
  <af, af>2 <af, af>2 |

}
lyricsA = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "A♭ pedal in bass - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "\breve*2
  "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"\breve
}

chordsAOne = \chordmode {
  df2 f4:7.9-.13- bf4:7.5+
}
trebleFine = {
  <bf ef' af'>2_\markup\left-align{\small\italic "Fine"}
}
bassFine = {
  <df f>2
}
trebleAOne = {
  \trebleFine
  <a df' gf'>4 <d' gf'>4 | \break
}
bassAOne = {
  \bassFine
  <f, ef>4 <bf, af>4 | \break
}


chordsATwo = \chordmode {
  df2 e4:min7 a4:7
}
trebleATwo = {
  <bf ef' af'>2 <d' fs' a'>4 <b cs' fs a>4
}
bassATwo = {
  <df f>2 <e g b>4 <a, g>4
}

chordsB = \chordmode {
  d1:maj7 | e1:min7 | d1:/fs | g2:min7 c2:7 |
  d2:maj7 f2:7 | bf2:maj7 df2:7 | gf2:maj7 a2:7 | d1:maj7 | d1:min7.5- |
  g1:7.9- c1:maj7 | ef1:7 | af2:maj7 b2:7 | e2:maj7 g2:7 |
  c2:maj7 b2:7 | bf2:sus4 bf2:7
}

keyB = d
trebleB = {
  \mark #2
  <b cs' e' fs' a'>1
  <g d' fs' a'>1
  <a d' fs' a'>1
  <bf d' f' a'>2 <bf d' e' a'>2 | \break
  <b e' fs' a'>2 <a d' a'>2 |
  <c' d' f' a'>2 <cf' ef' f' bf'>2 |
  <bf ef' af' df''>2 <cs' fs' b'>2 |
  <b e' a'>1 \bar "||"
  <c' e' g'>1 | \break

  <b e' gs'>1 |
  <b d' e' g'>1 |
  <df' f' c''>1 |
  <c' f' bf'>2 <cs' gs'>2 |
  <gs ds' gs'>2 <b e' g'>2 | \break

  <b d' e' g'>2 <cs' ds' gs'>2 |
  <c' ef' g'>2 <c' d' g'>2
  \bar "||"
}
bassB = {
  d,1 |
  e,1 |
  f,1 |
  <g, f>2 <c e>2 | \break

  d,2 <f, ef>2 |
  <bf, a>2 <df f>2 |
  <gf, f>2 <a, g>2 |
  <d fs>1 \bar "||"
  <d af>1 | \break

  <g, f>1 |
  <c e>1 |
  <ef g>1 |
  <af, g>2 <b, ds a>2 |
  <e, b,>2 <g, f>2 | \break

  <c e>2 <b, a>2 |
  <bf, af>2 <bf, af>2
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
  \segnoMark 1
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
  \trebleIntro
  \trebleIntro
  \trebleA
  \trebleAOne
  \trebleA
  \trebleATwo
  \trebleB
  \trebleA
  \trebleFine
}
expandedBass = {
  \bassIntro
  \bassIntro
  \bassA
  \bassAOne
  \bassA
  \bassATwo
  \bassB
  \bassA
  \bassFine
}
expandedOtherBass = {
  \bassOtherIntro
  \bassOtherIntro
  af,1 | af,1 | af,1 | af,1 | af,1 | af,1 | af,1 |
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
    \new Staff {
      \set Staff.midiInstrument = "bass"
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \expandedOtherBass
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
  <<
  \new GrandStaff \with { instrumentName = "piano"} <<
    \chords {
      \set chordChanges = ##t % only show chords when they change
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { "-" }
      \set midiMaximumVolume = #0 % prevent named chords sounding
      \set chordNameExceptions = #chordsExceptions
      \repeat volta 2 {
        \chordsIntro
      }
    }
    \new Staff {
      \key \theKey \major
      \numericTimeSignature
      \time \theSignature
      \clef treble {
        \skip \f % spacer to set voice volume
        \repeat volta 2 { \bar ".|:"
          \trebleIntro
        } \break
        % TODO: display otherbass
      }
    }
    \new Staff {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \repeat volta 2 { \bar ".|:"
          \bassIntro
        } \break
      }
    }
  >>
    \new Staff \with {instrumentName = "bass" } {
      \key \theKey \major
      \clef bass {
        \skip \f % spacer to set voice volume
        \repeat volta 2 { \bar ".|:"
          \bassOtherIntro
        } \break
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
      \set Score.markFormatter = #format-mark-box-letters
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
        s4_\markup\left-align{"D.S. al Fine"}
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
    \new Lyrics {
      \lyricsA
    }
  >>

}

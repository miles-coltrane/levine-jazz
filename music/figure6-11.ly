\version "2.24.4"
\include "include/prologue.ly"

theTempo = 120
theKey = c
theSignature = 8/4
theChords = \chordmode {
  e\breve:min7.5- | a:alt |
  c:min7 | f:7 |
  f:min7 | bf:7.9- r4 |
  ef\breve:maj7 | af:7.11+
}
theTreble = \relative {
  \override Timing.TimeSignature.stencil = ##f
  e'4 fs g a bf c d e | a, bf c df ef f g a | \break
  c,, d ef f g a bf c | f, g a bf c d ef f | \break
  f, g af bf c d ef g | \time 9/4 bf, b cs d e f g af bf |\break
  \time 8/4 ef,, f g af bf c d ef | af, bf c d ef f gf af
  \bar "||"
}
theLyrics = \lyricmode{
  \override LyricText.self-alignment-X = #LEFT
  "6th mode of G melodic minor"\breve |
  "7th mode of B♭ melodic minor" |
  "2nd mode of B♭ major" |
  "5th mode of B♭ major" |
  "2nd mode of E♭ major" |
  "B♭ half-step/whole-step diminished scale" ""4 |
  "1st mode of E♭ major"\breve |
  "4th mode of E♭ meloding minor"
}

\score {
  \midi {
    \tempo 4=\theTempo
  }
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\mm
    ragged-last = ##f
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
    \new Lyrics {
      \theLyrics
    }
    >>
  }
}

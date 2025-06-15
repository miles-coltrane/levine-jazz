\include "alt.ly"
\include "sus.ly"

chordsExceptions = #(append
  (sequential-music-to-chord-exceptions susExceptionMusic #t)
  (sequential-music-to-chord-exceptions altExceptionMusic #t)
  ignatzekExceptions)

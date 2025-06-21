\include "alt.ly"
\include "lydian.ly"
\include "sus.ly"

chordsExceptions = #(append
  (sequential-music-to-chord-exceptions susExceptionMusic #t)
  (sequential-music-to-chord-exceptions altExceptionMusic #t)
  (sequential-music-to-chord-exceptions lydianExceptionMusic #t)
  ignatzekExceptions)

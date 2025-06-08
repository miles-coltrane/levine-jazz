susExceptionMusic = {
  <c f g b>-\markup { \super "sus" } % assume suspended 4th
}

susExceptions = #(append
  (sequential-music-to-chord-exceptions susExceptionMusic #t)
  ignatzekExceptions)
#(define (remove-step p ps)
   "Copy PS, but remove the step of P in PS."
   (if (null? ps)
       '()
       (let* ((first (car ps))
              (rest (remove-step p (cdr ps))))
         (if (= (ly:pitch-steps p) (ly:pitch-steps first))
             rest
             (cons first rest)))))

#(define (sus-modifier pitches)
   (set! pitches (remove-step (ly:make-pitch 0 2 0) pitches)) ; remove 3rd
   (append pitches
           (list
            (ly:make-pitch 0 3 0) ; 4th
            (ly:make-pitch 0 6 FLAT) ; b7
            )))

%% update chordmodifiers to use this sus for ":jsus"
chordmodifiers =
#`((jsus . ,sus-modifier) . ,chordmodifiers)

susExceptionMusic = {
  <c f g bf>-\markup { \super "sus" }
}

susExceptions = #(append
  (sequential-music-to-chord-exceptions susExceptionMusic #t)
  ignatzekExceptions)

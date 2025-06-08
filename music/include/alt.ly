%% Adapted from https://music.stackexchange.com/questions/123236/how-to-display-alt-chords-in-lilypond
#(define (replace-step p ps)
   "Copy PS, but replace the step of P in PS."
   (if (null? ps)
       '()
       (let* ((first (car ps))
              (rest (replace-step p (cdr ps))))
         (if (= (ly:pitch-steps p) (ly:pitch-steps first))
             (cons p rest)
             (cons first rest)))))

#(define (alt-modifier pitches)
   (set! pitches (replace-step (ly:make-pitch 0 2 0) pitches)) ; assure major 3rd
   (append pitches
           (list
            (ly:make-pitch 0 6 FLAT) ; b7
            (ly:make-pitch 0 8 FLAT) ; b9
            (ly:make-pitch 0 9 FLAT) ; b10 == s9
            (ly:make-pitch 0 10 SHARP) ; s11
            (ly:make-pitch 0 12 FLAT) ; b13
            )))

%% update chordmodifiers to use alt
chordmodifiers =
#`((alt . ,alt-modifier) . ,chordmodifiers)

altExceptionMusic = {
  <c e g bf df' ef' fs' af'>-\markup { \super "7alt" } % altered chord (super-Locrian)
}

altExceptions = #(append
  (sequential-music-to-chord-exceptions altExceptionMusic #t)
  ignatzekExceptions)
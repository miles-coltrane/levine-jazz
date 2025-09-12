# LilyPond Notes

* duration is assumed same-as-previous if omitted
* `*s` or `*-sharp` = sharp
* `*f` or `*-flat` = flat
* for copy-pasting into text:   ♭   ♯   ♮  Δ   ø
* append number for duration, 8 => 1/8, 4 => 1/4 etc.  `\breve` for 2
* append tilde `~` for tie
* `< a b c >4` for chords
* [chord name suffixes](https://lilypond.org/doc/v2.25/Documentation/notation/common-chord-modifiers)
  - `:sus7` for "sus"
  - `:sus7.9-` for "sus ♭9"
  - `:min7.5-` for half-diminished
  - `:maj7.3-` for minor-major
  - `:maj7.11+` for Δ♯4
* `\tuplet 3/2 { a b c}` for tuplets
* append `\noBeam` to get a flag not a beam
* prepend `\tieUp` to adjust direction of tie
* to adjust horizontal spacing:
  ```
  \override Score.SpacingSpanner.spacing-increment = 4
  ```
* to remove time signature:
  ```
  \override Timing.TimeSignature.stencil = ##f
  ```
* for fingering annotation locations; single notes need to be put in a
  chord, as does the fingering (e.g. `<c\third>1`), then:
  ```
  \set fingeringOrientations = #'(right)
  ```
* to force display of a flat/sharp sign even when it would normally be assumed, add `!` after the note

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
  - `:alt` for 7alt
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

# Layout Files

## General

* `include/dual.ly`: bass+treble
  * `include/dual-aligned.ly` : bass+treble, with final clef right-aligned
  * `include/dual+lyrics.ly`: text below bass clef, synced with bass clef
  * `include/dual+lyrics2.ly`: text below bass clef, with durations
  * `include/dual+lyrics3.ly`: text below treble clef, synced with treble clef
*` include/treble.ly`: just treble clef
  * `include/treble-aligned.ly`: just treble clef, with final clef right-aligned
  * `include/treble-lyrics.ly`: just treble clef, with text underneath
  * `include/treble-lyrics-aligned.ly`: as above, final clef right-aligned
* `include/scale.ly`: single treble clef with scale name to left, text under
  * `include/scale-lyrics.ly`: as above, with synced text underneath
  * `include/scale-nochords.ly`: single treble clef with scale name to left, no chords
  * `include/scale-nochords2.ly`: as above, less spacing on final line
* `include/bass.ly`: just bass clef
* `include/modes.ly`: modes of a scale
  * `include/modes+.ly`: modes of a scale with one extra
* `include/prologue.ly`: standard prologue, sets English notation and cropped output then includes:
   * `chords.ly`: chord definitions for Jazz
   * `thirds.ly`: text markups for interval names
   * `notes.ly`: text markups for notes
   * `recolor.ly`: utility to change colours

## Specials

* `include/box-head.ly`: utility to put boxes around note heads
* `include/slash.ly`: start/stop slashes

startSlash = {
  \improvisationOn
  \override NoteHead.style = #'slash
  \omit Stem
}
stopSlash = {
  \improvisationOff
  \revert NoteHead.style
  \undo \omit Stem
}
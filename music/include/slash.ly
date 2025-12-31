startSlash = {
  \improvisationOn
  \set Staff.midiMaximumVolume = #0
  \omit Stem
}
stopSlash = {
  \improvisationOff
  \undo \omit Stem
}
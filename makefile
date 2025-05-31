all: png midi

INPUTS := $(wildcard music/*.ly)
PNG_OUTPUTS := $(patsubst music/%.ly,output/%.cropped.png,$(INPUTS))
MIDI_OUTPUTS:= $(patsubst music/%.ly,output/%.midi,$(INPUTS))

LILYPOND_OPTS := -dresolution=600 --png

list:
	@echo $(INPUTS)
png: $(PNG_OUTPUTS)
midi: $(MIDI_OUTPUTS)

output/%.png: music/%.ly | output
	lilypond $(LILYPOND_OPTS) --output=output/ $<
output/%.cropped.png: music/%.ly | output
	lilypond $(LILYPOND_OPTS) --output=output/ $<
output/%.midi: music/%.ly | output
	lilypond $(LILYPOND_OPTS) --output=output/ $<
output:
	mkdir -p $@
clean:
	rm -rf output

.PHONY: all png midi list clean

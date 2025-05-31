all: output/index.html png midi

INPUTS := $(wildcard music/*.ly)
PNG_OUTPUTS := $(patsubst music/%.ly,output/%.cropped.png,$(INPUTS))
MIDI_OUTPUTS:= $(patsubst music/%.ly,output/%.midi,$(INPUTS))

LILYPOND_OPTS := -dresolution=600 --png

list:
	@echo $(INPUTS)
png: $(PNG_OUTPUTS)
midi: $(MIDI_OUTPUTS)

# Start a local web server with the output (to avoid CORS errors)
serve: all
	cd output && http
# Open a browser tab connected to the local web server.
open:
	open http://localhost:8000/
output/index.html: contents.html | output
	./scripts/generate.py --input=$< --output=$@
output/%.png: music/%.ly | output
	lilypond $(LILYPOND_OPTS) --output=output/ $<
output/%.cropped.png: music/%.ly | output
	lilypond $(LILYPOND_OPTS) --output=output/ $<
output/%.midi: music/%.ly | output
	lilypond $(LILYPOND_OPTS) --output=output/ $<
output:
	mkdir -p $@
clean: clean_html clean_png clean_midi
clean_html:
	rm -f output/*.html
clean_png:
	rm -f output/*.png
clean_midi:
	rm -f output/*.midi
distclean:
	rm -rf output

.PHONY: all png midi list clean

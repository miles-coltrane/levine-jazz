all: png midi docs/index.html

INPUTS := $(wildcard music/*.ly)
PNG_OUTPUTS := $(patsubst music/%.ly,docs/%.cropped.png,$(INPUTS))
MIDI_OUTPUTS:= $(patsubst music/%.ly,docs/%.midi,$(INPUTS))

LILYPOND_OPTS := -dresolution=300 --png

list:
	@echo $(INPUTS)
png: $(PNG_OUTPUTS)
midi: $(MIDI_OUTPUTS)

# Start a local web server with the output (to avoid CORS errors)
serve: all
	cd docs && http
# Open a browser tab connected to the local web server.
open:
	open http://localhost:8000/
watch:
	fswatch -o contents.html music | xargs -n1 -I{} $(MAKE)

docs/index.html: contents.html scripts/generate.py | docs
	./scripts/generate.py --dir=docs --input=$< --output=$@
docs/%.cropped.png: music/%.ly | docs
	lilypond $(LILYPOND_OPTS) --output=docs/ $< && rm -f docs/$(basename $(notdir $<)).png
docs/%.midi: music/%.ly | docs
	lilypond $(LILYPOND_OPTS) --output=docs/ $< && rm -f docs/$(basename $(notdir $<)).png
docs:
	mkdir -p $@
clean: clean_html clean_png clean_midi
clean_html:
	rm -f docs/*.html
clean_png:
	rm -f docs/*.png
clean_midi:
	rm -f docs/*.midi
distclean:
	rm -rf docs

.PHONY: all png midi list clean

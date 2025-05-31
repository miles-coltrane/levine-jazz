all:

LILYPOND_OPTS=-dresolution=600 --png

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

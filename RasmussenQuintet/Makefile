LYFLAGS=-dno-point-and-click
LILYPOND=/Applications/Lilypond.app/Contents/Resources/bin/lilypond $(LYFLAGS)

all: score parts

score: mkdir
	$(LILYPOND) -o build/$@ score.ly

flute: mkdir
	$(LILYPOND) -o build/$@ flute.ly

oboe: mkdir
	$(LILYPOND) -o build/$@ oboe.ly

clarinet: mkdir
	$(LILYPOND) -o build/$@ clarinet.ly

horn: mkdir
	$(LILYPOND) -o build/$@ horn.ly

bassoon: mkdir
	$(LILYPOND) -o build/$@ bassoon.ly

parts: flute oboe clarinet horn bassoon

clean:
	-rm -rf build

mkdir:
	-mkdir -p build

.PHONY: clean all

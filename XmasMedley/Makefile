LYFLAGS=-dno-point-and-click
LILYPOND=/Applications/Lilypond.app/Contents/Resources/bin/lilypond $(LYFLAGS)

all: score parts

score: mkdir
	$(LILYPOND) -o build/$@ score.ly

trumpet1: mkdir
	$(LILYPOND) -o build/$@ trumpet1.ly

trumpet2: mkdir
	$(LILYPOND) -o build/$@ trumpet2.ly

horn: mkdir
	$(LILYPOND) -o build/$@ horn.ly

trombone: mkdir
	$(LILYPOND) -o build/$@ trombone.ly

tuba: mkdir
	$(LILYPOND) -o build/$@ tuba.ly

parts: trumpet1 trumpet2 horn trombone tuba

clean:
	-rm -rf build

mkdir:
	-mkdir -p build

.PHONY: clean all

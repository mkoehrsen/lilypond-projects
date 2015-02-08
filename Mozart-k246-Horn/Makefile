LYFLAGS=-dno-point-and-click
LILYPOND=/Applications/Lilypond.app/Contents/Resources/bin/lilypond $(LYFLAGS)

horn: mkdir
	$(LILYPOND) -o build/$@ horn.ly

clean:
	-rm -rf build

mkdir:
	-mkdir -p build

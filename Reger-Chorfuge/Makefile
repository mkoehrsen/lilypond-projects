LYFLAGS=-dno-point-and-click
LILYPOND=lilypond $(LYFLAGS)

# Includes targets for all plausible combinations of {trumpet1, trumpet2, horn, trombone, tuba/bass trombone}
# ttht: tpt1, tpt2, horn, trombone
# thtt: tpt1, horn, trombone, tuba
# tttt: tpt1, tpt2, trombone, tuba

all: ttht thtt tttt

ttht: score_ttht parts_ttht
thtt: score_thtt parts_thtt
tttt: score_tttt parts_tttt

score_ttht: mkdir
	$(LILYPOND) -o build/$@ score_ttht.ly

score_thtt: mkdir
	$(LILYPOND) -o build/$@ score_thtt.ly

score_tttt: mkdir
	$(LILYPOND) -o build/$@ score_tttt.ly

trumpet1: mkdir
	$(LILYPOND) -o build/$@ trumpet1.ly

trumpet2: mkdir
	$(LILYPOND) -o build/$@ trumpet2.ly

horn_alto: mkdir
	$(LILYPOND) -o build/$@ horn_alto.ly

horn_tenor: mkdir
	$(LILYPOND) -o build/$@ horn_tenor.ly

trombone_tenor: mkdir
	$(LILYPOND) -o build/$@ trombone_tenor.ly

trombone_bass: mkdir
	$(LILYPOND) -o build/$@ trombone_bass.ly

tuba: mkdir
	$(LILYPOND) -o build/$@ tuba.ly

parts_ttht: trumpet1 trumpet2 horn_tenor trombone_bass
parts_thtt: trumpet1 horn_alto trombone_tenor tuba
parts_tttt: trumpet1 trumpet2 trombone_tenor tuba

clean:
	-rm -rf build

mkdir:
	-mkdir -p build

.PHONY: clean all

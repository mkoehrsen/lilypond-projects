LYFLAGS=-dno-point-and-click
LILYPOND=lilypond $(LYFLAGS)

all: score parts

score: mkdir
	$(LILYPOND) -o build/$@ score.ly

part1_bb: mkdir
	$(LILYPOND) -o build/$@ PartI_Bb.ly

part1_c: mkdir
	$(LILYPOND) -o build/$@ PartI_C.ly

part2_bb: mkdir
	$(LILYPOND) -o build/$@ PartII_Bb.ly

part2_c: mkdir
	$(LILYPOND) -o build/$@ PartII_C.ly

part2_f: mkdir
	$(LILYPOND) -o build/$@ PartII_F.ly

part3_f: mkdir
	$(LILYPOND) -o build/$@ PartIII_F.ly

part3_c: mkdir
	$(LILYPOND) -o build/$@ PartIII_C.ly

part3_bb: mkdir
	$(LILYPOND) -o build/$@ PartIII_Bb.ly

part4_c: mkdir
	$(LILYPOND) -o build/$@ PartIV_C.ly

part4_b\#: mkdir
	$(LILYPOND) -o build/$@ PartIV_B\#.ly

parts: part1_bb part1_c part2_bb part2_c part2_f part3_f part3_c part3_bb part4_c part4_b\#

clean:
	-rm -rf build

mkdir:
	-mkdir -p build

.PHONY: clean all

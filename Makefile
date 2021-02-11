ASSEMBLER=./bin/tmpx
AFLAGS=-o ./release/base -i
DBGFLAG=-D DEBUG
MEMORYDUMP=./bin/petxd
DUMPOPTS=-c8 -L --color
EMULATOR=/Applications/vice-gtk3-3.5/x64sc.app/Contents/MacOS/x64sc
EMUFLAGS=-iecdevice8 -device8 1 -fs8 `pwd`/release

.PHONY: all full

all: clean build mdump
	echo "Done"

debug: clean dbgbuild mdump
	echo "Done"

full: clean build mdump emulate
	echo "Done"

clean:
	rm -f release/base && echo "Done"

build: src/main.asm
	@$(ASSEMBLER) $(AFLAGS) $<

dbgbuild: src/main.asm
	@$(ASSEMBLER) $(DBGFLAG) $(AFLAGS) $<

mdump: release/base
	@$(MEMORYDUMP) $(DUMPOPTS) $<

emulate: release/base
	@$(EMULATOR) $(EMUFLAGS) && echo "Done"

# C64asmOnOSX
```
_________   ________   _____
\_   ___ \ /  _____/  /  |  |  Commodore64
/    \  \//   __  \  /   |  |_ cross
\     \___\  |__\  \/    ^   / compiler
 \______  /\_____  /\____   |  template
        \/       \/      |__|  for OSX
```

This is my cross compiling environment for **Commodore64** under **OSX**. For _linux_ and _windows_, just download the correct version of the binaries described below, replace them as well as their _paths_ on the [Makefile](Makefile) and just run `make`.

## the binaries of the project are
- **bin**
  - [tempx](http://turbo.style64.org) - A multiplatform cross assembler version of Turbo Macro Pro. ([Syntax](http://turbo.style64.org/docs/turbo-macro-pro-tmpx-syntax))
  - [petxd](https://style64.org/petxd) - A xxd-like hex dumper that outputs using a Unicode/PETSCII representation.
- **EMULATOR**
  - [VICE](https://vice-emu.sourceforge.io) - the "Versatile Commodore Emulator". One of the best multiplataform C64 emulators.

As default, the base source file is [main.asm](src/main.asm) and it should be on `/src`.
to run the emulator just do a `make emulate` after a compilation or just `make full` to build and run. Once inside the **VICE** emulator, `LOAD"base",8,1` and `SYS _` where `_` is the memory address where you put your `prg`/compiled binary.

## example
```
$ make
TMPx v1.1.0 [r1141; 2015-08-13 11:11:32]; (c) Style 2008-2015

	Assembled: $1000 - $101f / Writing 34/$0022 bytes incl load address
1000: 20 12 10 60 50 55 54 41 
1008: 52 49 41 20 4d 41 4c 55 
1010: 43 41 a2 00 bd 04 10 20 
1018: d2 ff e8 e0 0e d0 f5 60 
Done
```

## TODO
- create a startup injector and put a tag to enable it


## enjoy

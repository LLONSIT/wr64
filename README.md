</p>
<p align="left">
    <a href="https://img.shields.io/badge/Remaining%20functions-32%2F36-green" alt="Libultra">
        <img src="https://img.shields.io/badge/Libultra-7.7%25-green" /></a>
  
</p>


# Wave Race 64
A early decompilation of a game with many waves!


```diff
+ Some info +

* This project is very early so for now you can't make any kind of modification, well maybe I'll focus on it soon ;).

* Obviously you need the original rom of the USA Version of Wave Race 64, I am not responsible for which methods you get it.

* About regionalization, currently I am only decompiling the US version, for now I am not interested in the European or Japanese version, maybe I will do it later but for now it's not a priority

```

## Dependencies

- With a little patience I think you can get this to work on Msys2 to ;) (Although it can be a "little" stressful)

- Install ``mips64-elf-binutils`` and ``Qemu Irix`` (for now) 

- Do `make dependencies`

- Run ``git clone --recursive https://github.com/LLONSIT/wr64.git``


```diff
- WARNING -

* If you cloned the repository without submodules do make extract and then make dependencies and make extract again

```

## Building the rom!

- Copy the Wave Race 64 USA Rom to ``baserom.z64``

Assuming that you cloned the repository with --recursive

- Run ``make extract ; make``


## Project Structure
	
	Wave Race 64
	├── asm: Assembler files (TODO: Remaining segments to classify)
	│   ├── libultra: Liubltra Hand written assembly files
	│   └── asm_nonmatchings: Functions that have not yet been matched either from libultra or from the game
	├── assets: Binary blobs from the game (very soon the textures will be)
	├── build: output directory
	├── include: header files, things like the structs or variables are here
	├── src: C source code for game
	│   ├── os: Libultra files
	│   └── core: DMA code
	└── tools: build tools



# Wave Race 64
A early decompilation of a game with many waves!


```diff
+ Some info +

* This project is very early so for now you can't make any kind of modification, well maybe I'll focus on it soon ;).

* Obviously you need the original rom of the USA Version of Wave Race 64, I am not responsible for which methods you get it.

```

## Dependencies

- With a little patience I think you can get this to work on Msys2 to ;) (Although it can be a "little" stressful)

- Install ``mips64-elf-binutils`` and ``Qemu Irix`` (for now) 

- Do `make dependencies`

- Run ``git clone --recursive https://github.com/LLONSIT/wr64.git``


```diff
- WARNING -

* If you cloned the repository without submodules do + make extract + and then make dependencies and + make extract + again

```

## Building the rom!

- Copy the Wave Race 64 USA Rom to ``baserom.z64``

Assuming that you cloned the repository with --recursive

- Run ``make extract ; make``

# Progress

A small count of what the project has for now

Libultra: 7.7% (the badges will come very soon)

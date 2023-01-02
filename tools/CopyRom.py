#!/usr/bin/python3

import sys

NBYTES = 0x120000

def get_files(rom_file, mask_file):
    total = 0
    value = 0
    while True:
        total = rom_file.read(1)
        if not total:
            break
        value += 1
        mask_file.write(total)
    return value

def write_dummy(out_file, n):
    for _ in range(n):
        out_file.write(b'\xff')

def main():
    if len(sys.argv) != 3:
        print("CopyRom ROM_file MASK_file", file=sys.stderr)
        sys.exit(1)
    try:
        with open(sys.argv[1], 'rb') as rom_file, open(sys.argv[2], 'wb') as mask_file:
            total = get_files(rom_file, mask_file)
            if total < NBYTES:
                write_dummy(mask_file, NBYTES - total)
                sys.exit(1)
    except OSError as e:
        print(e, file=sys.stderr)
        sys.exit(1)

if __name__ == '__main__':
    main()

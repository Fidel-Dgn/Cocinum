#!/usr/bin/env python3

import sys
from os.path import splitext, basename

if len(sys.argv) < 3:
    print("Usage: hex_to_vhdl.py SIZE FILE.hex > FILE.vhd")
    sys.exit(2)

with open(sys.argv[2]) as f:
    name = splitext(basename(sys.argv[2]))[0]
    capacity = int(sys.argv[1])

    if capacity % 4 != 0:
        capacity += 4 - capacity % 4

    records = []
    size = 0

    for line in f:
        byte_count  = int(line[1:3], 16)
        address     = int(line[3:7], 16)
        record_type = int(line[7:9], 16)

        if record_type == 0:
            data = line[9:9 + 2 * byte_count]
            size = max(size, address + byte_count)
            records.append((address, byte_count, data))
        elif record_type == 1:
            break
        else:
            print("Unsupported record type: {}".format(record_type))
            sys.exit(2)

    def get_byte(records, address):
        for r in records:
            if address >= r[0] and address < r[0] + r[1]:
                index = 2 * (address - r[0])
                return r[2][index:index+2]
        return "00"

    def get_word(records, address):
        w = [get_byte(records, address + b) for b in reversed(range(4))]
        return 'x"{}"'.format("".join(w))

    content = ",\n".join([get_word(records, a) for a in range(0, capacity, 4)])

    print("""
        library ieee;
        use ieee.std_logic_1164.all;
        use work.Virgule_pkg.all;
        package {name}_pkg is
            -- Program size: {size}
            constant DATA : word_vector_t(0 to {right}) := ({content});
        end {name}_pkg;
        """.format(name=name, size=size, right=int(capacity/4)-1, content=content))

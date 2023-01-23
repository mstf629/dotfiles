#!/usr/bin/env python
import subprocess
import os
raw = subprocess.check_output('cat $HOME/.cache/wal/colors', shell=True,).split()

colors = list()

#for line in f:
#    raw.append(line.rstrip())

for i in range(8):
    colors.append([raw[i].decode('ascii'), raw[i+8].decode("ascii")])



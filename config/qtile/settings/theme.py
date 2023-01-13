#!/usr/bin/env python
import os

home = os.environ['HOME']
file = f'{home}/.cache/wal/colors'
raw = list()
colors = list()

with open(file, 'r') as f:
    for line in f:
        raw.append(line.rstrip())

for i in range(8):
    colors.append([raw[i], raw[i+8]])

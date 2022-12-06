#!/usr/bin/env python
import os 

home = os.environ['HOME']
file = f'{home}/.cache/wal/colors'

colors_not_sort= []
colors = []

with open(file,'r') as _file :
    colors_not_sort = _file.readlines()

for i in range(8):
    colors.append([colors_not_sort[i],colors_not_sort[i+8]])
    
for i in range(len(colors)):
    colors[i][0]=colors[i][0][0:7]
    colors[i][1]=colors[i][1][0:7]

for i in colors:
    print(i)


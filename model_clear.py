# -*- coding: utf-8 -*-
"""
Created on Tue Feb 18 10:11:00 2021

@author: donsp
"""

import os
import shutil

max_m = max(os.listdir('model'))
for i in os.listdir('model'):
    if i != max_m:
        shutil.rmtree('model/' + i) # windows/linux

shutil.rmtree('reports')
shutil.rmtree('results')
os.mkdir('reports')
os.mkdir('results')

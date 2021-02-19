# -*- coding: utf-8 -*-
"""
Created on Thu Feb 18 2021

@author: donsp
"""

import sra_gen as gen
import sra_report as rep
from pathlib import Path

import os
import tensorflow as tf
import pandas as pd
import jieba
import jieba.posseg as pseg
import numpy as np
from IPython import display

pathw = input("please input file path: ")
if not Path("reports").exists():
    os.mkdir("reports")

if not Path("results").exists():
    os.mkdir("results")

os.mkdir('reports/' + pathw)
os.mkdir('results/' + pathw)

for i in os.listdir(pathw):
    pth = pathw + '/' + i
    os.mkdir('reports/' + pth.strip('.xlsx'))
    gen.data_gen(pth, pth)
    rep.gen_report(pth, pth, pth.strip('.xlsx'))

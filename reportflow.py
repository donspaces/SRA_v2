# -*- coding: utf-8 -*-
"""
Created on Thu Feb 18 2021

@author: donsp
"""

import sra_gen as gen
import sra_report as rep
import shutil
from pathlib import Path

import os
import tensorflow as tf
import pandas as pd
import jieba
import jieba.posseg as pseg
import numpy as np
from IPython import display

def reportflow(pathw):
    # pathw = input("please input file path: ")
    if not Path("reports").exists():
        os.mkdir("reports")

    if not Path("data").exists():
        os.mkdir("data")

    if not Path("reports/data").exists():
        os.mkdir("reports/data")

    try:
        os.mkdir('reports/data/' + pathw)

        for i in os.listdir('data/' + pathw):
            pth = 'data/' + pathw + '/' + i
            os.mkdir('reports/' + pth.strip('.xlsx'))
            gen.data_gen(pth, pth)
            rep.gen_report(pth, pth, pth.strip('.xlsx'))
    except Exception as e:
    #    shutil.rmtree('reports/data/' + pathw)
        print("roll back due to", e.args,".")

if __name__ == '__main__':
    reportflow("XLF")

# -*- coding: utf-8 -*-
"""
Created on Tue Feb 18 10:11:00 2021

@author: donsp
"""

import os
import shutil

def model_clear():
    print("please wait, model is cleaning...")
    max_m = max(os.listdir('model'))
    for i in os.listdir('model'):
        if i != max_m:
            shutil.rmtree('model/' + i) # windows/linux
    print("done!")

if __name__=='__main__':
    model_clear()


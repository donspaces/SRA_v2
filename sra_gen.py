# -*- coding: utf-8 -*-
"""
Created on Tue Jan  5 10:16:00 2021

@author: donsp
"""
import os
import tensorflow as tf
import pandas as pd
import jieba
import jieba.posseg as pseg
import numpy as np
from IPython import display

def data_gen(test_set, savename):
    file = max(os.listdir("model"))
    dire = "model/" + file
    print(dire)

    model = tf.saved_model.load(dire)

    categories = ['C1', 'C2', 'C3', 'C4']

    sample_data = pd.read_excel(test_set, engine="openpyxl", skiprows=4)
    sample_data = sample_data[sample_data['后果类别'] == '人员伤害']

    def preprocess_features(training_raw):
          training_data = training_raw[["潜在后果"]]
          stop_token = ["，","。"]
          apply = []
          sentences = []

          tokenizer = pseg.POSTokenizer(tokenizer=None)
          words = [list(tokenizer.cut(sen)) for sen in training_data["潜在后果"]]
          for sent in words:
            for word, properties in sent:
              #if (properties == 'n' or properties == 'v') and len(word) >= 2:
                if word not in stop_token:
                  apply.append(word)
            sentences.append(apply)
            apply = []

          return sentences

    levels = []
    words = preprocess_features(sample_data)

    for sent in words:
        words_array = np.array(sent)
        words_array = np.expand_dims(words_array, axis=0)
        # print(words_array)

        prediction = model.signatures["serving_default"](tf.constant(words_array))
        scores = list(prediction["scores"][0])
        level = categories[scores.index(max(scores))]
        # print(level)
        levels.append(level)

    prediction_data = pd.DataFrame()
    prediction_data["consequence"] = sample_data["潜在后果"]
    prediction_data["prediction"] = levels
    display.display(prediction_data.head())
    prediction_data.to_excel('reports/' + savename, sheet_name="result")

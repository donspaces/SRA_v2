# -*- coding: utf-8 -*-
"""SRA

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1nJL8x-bLWSqo8A7_Fx8eXtzyAm2wg7KB
"""

# Commented out IPython magic to ensure Python compatibility.
# %tensorflow_version 1.x
from __future__ import print_function
import pandas as pd
import tensorflow as tf
import tensorflow_datasets as tfds
import numpy as np
import jieba
import jieba.posseg as pseg
from scipy import stats as st
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import pyplot as plt
from sklearn import metrics
from IPython import display
import nltk
from nltk.corpus import stopwords
import matplotlib.font_manager as fm

Rep_Jan_2020_T = pd.read_excel('E:/training_data/zxjh/zxjh-training-data/zxjh_testing data set_202001.xlsx', engine="openpyxl", skiprows=3)

def predict(Test_data=Rep_Jan_2020_T, eager=False):

    if(eager == True):
        tf.enable_eager_execution()
    tf.logging.set_verbosity(tf.logging.ERROR)
    
    pd.options.display.max_colwidth = 30
    
    Rep_Dec_2019 = pd.read_excel('E:/training_data/zxjh/zxjh-training-data/zxjh-training data set-201912.xlsx', engine="openpyxl", skiprows=3)
    Rep_Nov_2019 = pd.read_excel('E:/training_data/zxjh/zxjh-training-data/zxjh-training data set-201911.xlsx', engine="openpyxl", skiprows=3)
    Rep_Oct_2019 = pd.read_excel('E:/training_data/zxjh/zxjh-training-data/zxjh-training data set-201910.xlsx', engine="openpyxl", skiprows=3)
    Rep_Sep_2019 = pd.read_excel('E:/training_data/zxjh/zxjh-training-data/zxjh-training data set-201909.xlsx', engine="openpyxl", skiprows=3)
    
    Training_Rep = pd.concat([Rep_Dec_2019, Rep_Nov_2019, Rep_Oct_2019], sort=False)
    Validation_Rep = Rep_Sep_2019
    Testing_Rep = Test_data
    Validation_Rep = Validation_Rep[Validation_Rep['后果类别'] == '人员伤害']
    Testing_Rep = Testing_Rep[Testing_Rep['后果类别'] == '人员伤害']
    Training_Rep.head()
    
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
    
    def preprocess_targets(training_raw):
      target = pd.Categorical(training_raw["严重性"])
      codes = target.codes
      categories = target.categories
      return codes, categories
    
    training_set = preprocess_features(Training_Rep)
    training_tag, training_tag_names = preprocess_targets(Training_Rep)
    validation_set = preprocess_features(Validation_Rep)
    validation_tag, validation_tag_names = preprocess_targets(Validation_Rep)
    testing_set = preprocess_features(Testing_Rep)
    testing_tag, testing_tag_names = preprocess_targets(Testing_Rep)
    print(testing_tag_names)
    print(training_set)
    
    def input_fn(features, targets, batch_size=25, num_epoch=None, shuffle=True):
    
      def package_generator():
        for feature, tag in zip(features, targets):
          yield feature, tag
    
      dataset = tf.data.Dataset.from_generator(package_generator, output_types=(tf.string,tf.int64), output_shapes=((None,),()))
      
      if shuffle == True:
        dataset.shuffle(90)
    
      dataset = dataset.padded_batch(batch_size, dataset.output_shapes)
      dataset = dataset.repeat(num_epoch)
    
      next_feature, next_label = dataset.make_one_shot_iterator().get_next()
      return {"terms":next_feature}, next_label
    
    sample_feature, sample_label = input_fn(training_set, training_tag)
    print(sample_feature, sample_label)
    
    categorical_column = tf.feature_column.categorical_column_with_hash_bucket("terms", 100000)
    
    my_optimizer = tf.train.AdagradOptimizer(learning_rate=0.1)
    my_optimizer = tf.contrib.estimator.clip_gradients_by_norm(my_optimizer, clip_norm=5.0)
    
    terms_embedding_column = tf.feature_column.embedding_column(categorical_column, dimension=16)
    feature_columns = [terms_embedding_column]
    
    dnn_regressor = tf.estimator.DNNClassifier(
        hidden_units = [20,20],
        feature_columns = feature_columns,
        n_classes = 4,
        optimizer = my_optimizer
    )
    
    _ = dnn_regressor.train(
            input_fn = lambda: input_fn(training_set, training_tag),
            steps = 5000
        )
    
    estimation = dnn_regressor.evaluate(
        input_fn = lambda: input_fn(validation_set, validation_tag),
        steps = 5000
    )
    
    print("training assessment:")
    for name in estimation:
      print(name, estimation[name])
    print("------")
    
    alpha = 0.05
    result = ["reject", "fail to reject"]
    count = Validation_Rep["严重性"].count()
    accuracy = estimation["accuracy"]
    
    p_score = st.binom_test(round(accuracy * count), n=count, p=0.95, alternative="less")
    print("result:", result[p_score > alpha])
    
    variable_names = dnn_regressor.get_variable_names()
    print(variable_names)
    
    if(eager == True):
        def demo(feature_column, features):
          feature_layer = tf.keras.layers.DenseFeatures(feature_columns=feature_column)
          return feature_layer(features).numpy()
        
        
        def indicator_pf(column):
          for i in range(5):
            for j in range(len(column[i])):
              if column[i][j]==1:
                print(j, end=' ')
            print(end='\n')
        
        def get_embedding_weights():
          variable = dnn_regressor.get_variable_value('dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights')
          return variable
        
        embedding = get_embedding_weights()
        print(embedding)
        indicator_column = tf.feature_column.indicator_column(categorical_column)
        column = demo(indicator_column, sample_feature)
        indicator_pf(column)
        
        def vocabulary_builder(features):
          vocabulary = []
          for sentence in features:
              for word in sentence:
                vocabulary.append(word)
          vocabulary = list(set(vocabulary))
          return vocabulary
        
        training_words = vocabulary_builder(training_set)
        training_indicators = demo(indicator_column, {"terms":training_words})
        indicator_pf(training_indicators)
        
        Fontproperties = fm.FontProperties(fname='C:/Windows/Fonts/simkai.ttf')
        
        for i in range(len(training_indicators)):
          embedding_vector = np.matmul(training_indicators[i], embedding)
          plt.text(embedding_vector[0],
                    embedding_vector[1],
                    training_words[i],
                    Fontproperties=Fontproperties)
        plt.rcParams["figure.figsize"] = (19, 19)
        plt.xlim(embedding.min()*1.2, embedding.max()*1.2)
        plt.ylim(embedding.min()*1.2, embedding.max()*1.2)
        plt.show()
    else:
        def serving_input_receiver_fn():
            feature_spec = {"terms": tf.placeholder(tf.string, shape=(None, None,))}
            return tf.estimator.export.build_raw_serving_input_receiver_fn(feature_spec)
        
        input_receiver_fn = serving_input_receiver_fn()
        dnn_regressor.export_savedmodel("model", input_receiver_fn)
    
    predictions = dnn_regressor.predict(input_fn = lambda: input_fn(
                                                          testing_set,
                                                          testing_tag,
                                                          num_epoch=1,
                                                          shuffle=False))
    
    predictions = np.array([item["probabilities"] for item in predictions])
    predict_tag = []
    
    for values in predictions:
      for i in range(len(values)):
        if values[i] == max(values):
          predict_tag.append(testing_tag_names[i])
    
    prediction_dataframe = pd.DataFrame()
    prediction_dataframe["consequence"] = Testing_Rep['潜在后果']
    prediction_dataframe["prediction"] = predict_tag
    display.display(prediction_dataframe.head())
    prediction_dataframe.to_excel("E:/training_data/zxjh/predictions/prediction.xlsx", sheet_name="result")
    
    return prediction_dataframe

if __name__ == "__main__":
    predict()
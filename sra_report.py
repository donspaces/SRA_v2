# -*- coding: utf-8 -*-
"""
Created on Sat Oct 24 16:05:08 2020

@author: donsp
"""

import sra_local as sra
import tensorflow as tf
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib as mpl
import numpy as np
import math
from IPython import display


def gen_report(csv, pred, pathn):
    mpl.rcParams["font.sans-serif"] = ["SimHei"]
    mpl.rcParams["axes.unicode_minus"] = False
    mpl.rcParams["font.size"] = 30

    #Read test data from file
    test_data = pd.read_excel(csv, engine="openpyxl", skiprows=4)
    test_data = test_data[test_data["后果类别"] == "人员伤害"]
    display.display(test_data.head())

    #Get General Predictions of AI
    #predict = sra.predict(test_data)
    predict = pd.read_excel('results/' + pred, engine="openpyxl", sheet_name="result")

    #Plot dist for each risk type in pie
    type1 = test_data['隐患类型1'].count()
    type2 = test_data['隐患类型2'].count()
    type3 = test_data['隐患类型3'].count()
    type4 = test_data['隐患类型4'].count()

    types=[type1,type2,type3,type4]

    plt.figure(figsize=(6,6))
    plt.pie(types,labels=['人因','物因','环境','管理'],autopct="%1.1f%%")
    plt.title("隐患类型统计",loc='center',fontdict={'fontsize':25})
    plt.savefig('reports/' + pathn + '/chart1.png')

    #Plot the the subtypes for each risk type in pie
    type1=test_data['隐患类型1'].value_counts().sort_values(ascending=True)
    type2=test_data['隐患类型2'].value_counts().sort_values(ascending=True)
    type3=test_data['隐患类型3'].value_counts().sort_values(ascending=True)
    type4=test_data['隐患类型4'].value_counts().sort_values(ascending=True)

    plt.figure(figsize=(19,12))
    type1.plot(kind='barh',title="人因")
    plt.tight_layout()
    plt.savefig('reports/' + pathn + '/renyin.png')

    plt.figure(figsize=(19,12))
    type2.plot(kind='barh',title="物因")
    plt.tight_layout()
    plt.savefig('reports/' + pathn + '/wuyin.png')

    plt.figure(figsize=(19,12))
    type3.plot(kind='barh',title="环境")
    plt.tight_layout()
    plt.savefig('reports/' + pathn + '/huanjing.png')

    plt.figure(figsize=(19,12))
    type4.plot(kind='barh',title="管理")
    plt.tight_layout()
    plt.savefig('reports/' + pathn + '/guanli.png')

    #Grade "ways to prevent" and plot
    #Characters:
    # D: x<=5 C: 5<=x<=10 B: 10<=x<=20 A: x>20
    level1 = level2 = level3 = level4 = 0

    user_lvl = pd.DataFrame();
    lvl=[]
    sent=[]
    for item in test_data["整改措施"]:
        if(str(item)!="nan"):
            sent=[i for i in item if i!="√" and i!="×" and i!="\n" and i!=" "]
        sent="".join(sent)

        if(len(sent)<=5):
            lvl.append("D")
            level1+=1

        elif(len(sent)<=10):
            lvl.append("C")
            level2+=1

        elif(len(sent)<=20):
            lvl.append("B")
            level3+=1

        else:
            lvl.append("A")
            level4+=1

    writer = pd.ExcelWriter("reports/" + pathn + "/整改措施评定.xlsx")
    user_lvl["name"] = test_data["发现人"]
    user_lvl["Grade"] = lvl

    user_lvl.to_excel(writer,sheet_name="result")

    Lvl_Sum = user_lvl["name"].value_counts()

    Lvl_Sum.to_excel(writer,sheet_name="total")

    writer.save()

    plt.figure(figsize=(10,10))
    plt.pie([level1,level2,level3,level4],autopct="%1.1f%%",labels=["D","C","B","A"])
    plt.text(1,1,"numbers of characters x:\n\
             D:x<=5\n\
             C:5<=x<=10\n\
             B:10<=x<=20\n\
             A:x>20\n")
    plt.title("整改措施评定等级",loc='center',fontdict={'fontsize':25})
    plt.tight_layout()
    plt.savefig("reports/" + pathn + "/chart3.png")

    #Compare prediction by human and AI and plot
    risk_lvl = test_data["风险级别"].value_counts().sort_index()

    plt.figure(figsize=(6,6))
    risk_lvl.plot(kind='pie',title="人判断风险级别",autopct="%1.1f%%"
                  ,colors=['red','orange','yellow','lightskyblue'])
    plt.savefig("reports/" + pathn + "/risk_level1.png")

    lvl_dict = {"C1":
                {"F1":"IV","F2":"IV","F3":"IV","F4":"IV"},
                "C2":
                {"F1":"IV","F2":"IV","F3":"III","F4":"II"},
                "C3":
                {"F1":"IV","F2":"III","F3":"II","F4":"I"},
                "C4":
                {"F1":"III","F2":"II","F3":"I","F4":"I"}
                }

    Risk_Data=pd.DataFrame()
    Risk_Data["C_level"] = predict['prediction']
    Risk_Data["F_level"] = list(test_data["可能性"])

    r_level=[]
    for index, row in Risk_Data.iterrows():
        r_level.append(lvl_dict[row[0]][row[1]])

    Risk_Data["R_level"] = r_level
    display.display(Risk_Data)

    r_values=Risk_Data["R_level"].value_counts().sort_index()

    plt.figure(figsize=(6,6))
    r_values.plot(kind="pie",autopct="%1.1f%%",title="机判断风险级别"
                  ,colors=['red','orange','yellow','lightskyblue'])
    plt.savefig("reports/" + pathn + "/risk_level2.png")

    #Show mistakes of human and add them up
    Cmp_data=pd.DataFrame()
    Cmp_data["name"] = list(test_data["发现人"])
    Cmp_data["Human_C"] = list(test_data["严重性"])
    Cmp_data["CPU_C"] = predict['prediction']

    writer=pd.ExcelWriter("reports/" + pathn + "/员工错误题目.xlsx")

    Cmp_data = Cmp_data[Cmp_data["Human_C"] != Cmp_data["CPU_C"]]

    print(Cmp_data)

    Cmp_data.to_excel(writer, sheet_name="result")


    mistakes = Cmp_data["name"].value_counts()

    print(mistakes)

    mistakes.to_excel(writer, sheet_name="total")

    writer.save()

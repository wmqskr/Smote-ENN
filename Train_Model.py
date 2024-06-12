# -*- coding: utf-8 -*-
import scipy.io
import sys
import numpy as np
import pandas as pd
from sklearn.ensemble import RandomForestClassifier, GradientBoostingClassifier, VotingClassifier
from sklearn.metrics import accuracy_score
from sklearn.model_selection import KFold
import pickle


print("Start training")

# 读取 CSV 数据集
df = pd.read_csv('./Data/Processed_Data/DR_SMOTE_ENN.csv')

# 假设最后一列是标签，其余列是特征
features = df.iloc[:, :-1].values
labels = df.iloc[:, -1].values

# 十折交叉验证
kf = KFold(n_splits=10, shuffle=True, random_state=1)

# 初始化性能指标列表
accuracies = []

# 十折交叉验证
for train_index, test_index in kf.split(features):
    # 划分训练集和测试集
    X_train, X_test = features[train_index], features[test_index]
    y_train, y_test = labels[train_index], labels[test_index]

    # 定义分类器
    rfc1 = RandomForestClassifier(n_estimators=170, random_state=1)
    gbc = GradientBoostingClassifier(n_estimators=580, random_state=1)
    rfc2 = RandomForestClassifier(n_estimators=200, random_state=1)


    # 定义集成模型
    voting_classifier = VotingClassifier(estimators=[('rfc1', rfc1), ('rfc2', rfc2), ('gbc', gbc)], voting='soft')

    # 训练集成模型
    voting_classifier.fit(X_train, y_train)

    # 在测试集上进行预测
    predictions = voting_classifier.predict_proba(X_test)[:, 1]

    # 计算模型准确率
    accuracy = accuracy_score(y_test, predictions.round())
    accuracies.append(accuracy)
    print("Current ACC:", accuracy)

# 输出十折交叉验证的性能指标
print("Ten fold cross verification accuracy:", accuracies)
print("Average ACC:", np.mean(accuracies))

# 保存模型到文件
with open("new_ensemble.pkl", "wb") as model_file:
    pickle.dump(voting_classifier, model_file)


# -*- coding: utf-8 -*-
#给定数据集，生成交叉验证的索引
import pandas as pd
import numpy as np
import scipy.io as sio
from sklearn.model_selection import KFold

# 生成交叉验证的索引
data = pd.read_csv('./Data/Processed_Data/DR_SMOTE_ENN.csv')


# 划分特征和标签
X = data.iloc[:, :-1].values
y = data.iloc[:, -1].values

# 统计正负样本的数量
numPositive_synthetic = np.sum(y == 1)
numNegative_synthetic = np.sum(y == 0)

# 输出正负样本的数量
print('Positive samples:', numPositive_synthetic)
print('Negative samples:', numNegative_synthetic)

# 进行十折交叉验证
k = 10  # 折数
n = X.shape[0]  # 样本数
kf = KFold(n_splits=k, shuffle=True)  # 生成交叉验证索引

# 创建特征+标签+索引矩阵
data_with_indices = np.column_stack((X, y, np.zeros(n)))

# 填充交叉验证索引
for i, (_, test_index) in enumerate(kf.split(X)):
    data_with_indices[test_index, -1] = i + 1

# 保存特征+标签+索引矩阵
sio.savemat('./Data/Processed_Data/DR_SMOTE_ENN.mat', {'data_with_indices': data_with_indices})


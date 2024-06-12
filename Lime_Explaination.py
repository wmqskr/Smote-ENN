import pandas as pd
from sklearn.model_selection import KFold
from sklearn.ensemble import RandomForestClassifier, GradientBoostingClassifier, VotingClassifier
from sklearn.metrics import confusion_matrix, accuracy_score, matthews_corrcoef, roc_auc_score
from lime.lime_tabular import LimeTabularExplainer
import numpy as np

# 读取 CSV 数据集
df = pd.read_csv('./Data/Processed_Data/DR_SMOTE_ENN.csv')

# 假设最后一列是标签，其余列是特征
X = df.iloc[:, :-1].values
y = df.iloc[:, -1].values

# 十折交叉验证
kf = KFold(n_splits=10, shuffle=True, random_state=1)

# 存储结果
sn_list = []
sp_list = []
acc_list = []
mcc_list = []
auc_list = []

# 初始化 LIME 解释器
explainer = LimeTabularExplainer(X, mode='classification', feature_names=df.columns[:-1], class_names=['0', '1'])

for train_index, test_index in kf.split(X):
    X_train, X_test = X[train_index], X[test_index]
    y_train, y_test = y[train_index], y[test_index]

    # 定义分类器
    rfc = RandomForestClassifier(n_estimators=170, random_state=1)
    gbc = GradientBoostingClassifier(n_estimators=580, random_state=1)
    rfc1 = RandomForestClassifier(n_estimators=200, random_state=1)

    # 创建投票集成分类器
    ensemble = VotingClassifier(estimators=[('rfc', rfc), ('gbc', gbc), ('rfc1', rfc1)], voting='soft')

    # 训练集成分类器
    ensemble.fit(X_train, y_train)

    # 在测试集上预测概率
    ensemble_probabilities = ensemble.predict_proba(X_test)[:, 1]

    # 计算评估指标
    tn, fp, fn, tp = confusion_matrix(y_test, ensemble_probabilities.round()).ravel()
    sn = tp / (tp + fn)  # Sensitivity or Recall
    sp = tn / (tn + fp)  # Specificity
    acc = accuracy_score(y_test, ensemble_probabilities.round())
    mcc = matthews_corrcoef(y_test, ensemble_probabilities.round())
    auc = roc_auc_score(y_test, ensemble_probabilities)

    # 将结果添加到列表中
    sn_list.append(sn)
    sp_list.append(sp)
    acc_list.append(acc)
    mcc_list.append(mcc)
    auc_list.append(auc)

    print(f"sn:{sn}, sp:{sp}, acc:{acc}, mcc:{mcc}, auc:{auc}")

    # 选择一个样本进行解释
    sample_index = 0  # 选择第一个样本
    exp = explainer.explain_instance(X_test[sample_index], ensemble.predict_proba, num_features=len(df.columns[:-1]))
    exp.show_in_notebook(show_table=True, show_all=False)
    # 保存解释结果到HTML文件
    exp.save_to_file(f'lime_explanation_fold_{len(sn_list)}.html')

# 计算平均值和标准差
print(f'Sensitivity (SN): {np.mean(sn_list):.4f} ± {np.std(sn_list):.4f}')
print(f'Specificity (SP): {np.mean(sp_list):.4f} ± {np.std(sp_list):.4f}')
print(f'Accuracy (ACC): {np.mean(acc_list):.4f} ± {np.std(acc_list):.4f}')
print(f'Matthews Correlation Coefficient (MCC): {np.mean(mcc_list):.4f} ± {np.std(mcc_list):.4f}')
print(f'Area Under Curve (AUC): {np.mean(auc_list):.4f} ± {np.std(auc_list):.4f}')

# -*- coding: utf-8 -*-

import itertools
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import roc_curve, auc
from sklearn.metrics import precision_recall_curve
from sklearn.metrics import average_precision_score
import matplotlib as mpl
import pandas as pd
lw=1
mpl.rcParams['font.family'] = 'sans-serif'
mpl.rcParams['font.sans-serif'] = 'NSimSun,Times New Roman'
ytest= pd.read_csv('yeast/ytest_sum_GTB.csv', index_col=0) 
ytest_GTB=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast/yscore_sum_GTB.csv', index_col=0)
yscore_GTB=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast/yeast_GTB_result.csv',index_col=0)
auc_GTB=np.array(auc_,dtype=np.float)
auc_score_GTB=auc_GTB[5,7]
fpr, tpr, _ = roc_curve(ytest_GTB[:,0], yscore_GTB[:,0])
#the size of line  
plt.plot(fpr, tpr, color='red',
lw=lw, label='GTB (AUC = %.4f)' % auc_score_GTB)

ytest= pd.read_csv('yeast/ytest_sum_KNN_5.csv', index_col=0) 
ytest_KNN=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast/yscore_sum_KNN_5.csv', index_col=0)
yscore_KNN=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast/yeast_KNN_result_5.csv',index_col=0)
auc_KNN=np.array(auc_,dtype=np.float)
auc_score_KNN=auc_KNN[5,7]
fpr, tpr, _ = roc_curve(ytest_KNN[:,0], yscore_KNN[:,0])
plt.plot(fpr, tpr, color='darkorange',
lw=lw, label='KNN (AUC = %.4f)' % auc_score_KNN)

ytest= pd.read_csv('yeast/ytest_sum_NB.csv', index_col=0) 
ytest_NB=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast/yscore_sum_NB.csv', index_col=0)
yscore_NB=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast/yeast_NB_result.csv',index_col=0)
auc_NB=np.array(auc_,dtype=np.float)
auc_score_NB=auc_NB[5,7]
fpr, tpr, _ = roc_curve(ytest_NB[:,0], yscore_NB[:,0])
plt.plot(fpr, tpr, color='limegreen',
lw=lw, label='NB (AUC = %.4f)' % auc_score_NB)

ytest= pd.read_csv('yeast/ytest_sum_SVC.csv', index_col=0) 
ytest_SVC=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast/yscore_sum_SVC.csv', index_col=0)
yscore_SVC=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast/yeast_SVC_result.csv',index_col=0)
auc_SVC=np.array(auc_,dtype=np.float)
auc_score_SVC=auc_SVC[5,7]
fpr, tpr, _ = roc_curve(ytest_SVC[:,0], yscore_SVC[:,0])  
plt.plot(fpr, tpr, color='darkorchid',
lw=lw, label='SVM (AUC = %.4f)' % auc_score_SVC)

ytest= pd.read_csv('yeast/ytest_sum_RF_500.csv', index_col=0) 
ytest_RF=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast/yscore_sum_RF_500.csv', index_col=0)
yscore_RF=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast/yeast_RF_result_500.csv',index_col=0)
auc_RF=np.array(auc_,dtype=np.float)
auc_score_RF=auc_RF[5,7]
fpr, tpr, _ = roc_curve(ytest_RF[:,0], yscore_RF[:,0]) 
plt.plot(fpr, tpr, color='deepskyblue',
lw=lw, label='RF (AUC = %.4f)' % auc_score_RF)

plt.plot([0, 1], [0, 1], color='navy', lw=lw, linestyle='--')
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.03])
plt.xlabel('False positive rate')
plt.ylabel('True positive rate')
plt.legend(loc="lower right")
plt.savefig('yeast_classifier_comparasion',dpi=1000)
plt.show()

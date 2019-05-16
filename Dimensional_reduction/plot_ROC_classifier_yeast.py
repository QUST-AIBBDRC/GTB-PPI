import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from sklearn.metrics import roc_curve, auc
import pandas as pd
mpl.rcParams['font.family'] = 'sans-serif'
mpl.rcParams['font.sans-serif'] = 'NSimSun,Times New Roman'
lw=1
#L1 regularized logistic regression
ytest= pd.read_csv('ytest_sum_GTB.csv', index_col=0) 
ytest_GTB=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yscore_sum_GTB.csv', index_col=0)
yscore_GTB=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast_GTB_result.csv',index_col=0)
auc_GTB=np.array(auc_,dtype=np.float)
auc_score_GTB=auc_GTB[5,7]
fpr, tpr, _ = roc_curve(ytest_GTB[:,0], yscore_GTB[:,0])  
plt.plot(fpr, tpr, color='red',
lw=lw, label='ℓ1_RLR (AUC = %.4f)' % auc_score_GTB)
#semi-supervise dimensional reduction
ytest= pd.read_csv('yeast_ytest_sum_SSDR.csv', index_col=0) 
ytest_SVC=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast_yscore_sum_SSDR.csv', index_col=0)
yscore_SVC=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast_result_SSDR.csv',index_col=0)
auc_SVC=np.array(auc_,dtype=np.float)
auc_score_SVC=auc_SVC[5,7]
fpr, tpr, _ = roc_curve(ytest_SVC[:,0], yscore_SVC[:,0])  
plt.plot(fpr, tpr, color='darkorchid',
lw=lw, label='SSDR (AUC = %.4f)' % auc_score_SVC)
#PCA dimensional reduction
ytest= pd.read_csv('yeast_ytest_sum_PCA_90.csv', index_col=0) 
ytest_RF=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast_yscore_sum_PCA_90.csv', index_col=0)
yscore_RF=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast_result_PCA_90.csv',index_col=0)
auc_RF=np.array(auc_,dtype=np.float)
auc_score_RF=auc_RF[5,7]
fpr, tpr, _ = roc_curve(ytest_RF[:,0], yscore_RF[:,0])
plt.plot(fpr, tpr, color='darkorange',
lw=lw, label='PCA (AUC = %.4f)' % auc_score_RF)
# KPCA dimensional reduction
ytest= pd.read_csv('yeast_ytest_sum_KPCA_90.csv', index_col=0) 
ytest_KPCA=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast_yscore_sum_KPCA_90.csv', index_col=0)
yscore_KPCA=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast_result_KPCA_90.csv',index_col=0)
auc_KPCA=np.array(auc_,dtype=np.float)
auc_score_KPCA=auc_KPCA[5,7]
fpr, tpr, _ = roc_curve(ytest_KPCA[:,0], yscore_KPCA[:,0]) 
plt.plot(fpr, tpr, color='limegreen',
lw=lw, label='KPCA (AUC = %.4f)' % auc_score_KPCA)
#FA dimensional reduction
ytest= pd.read_csv('yeast_ytest_sum_FA.csv', index_col=0) 
ytest_fa=np.array(ytest,dtype=np.float)
yscore= pd.read_csv('yeast_yscore_sum_FA.csv', index_col=0)
yscore_fa=np.array(yscore,dtype=np.float)
auc_=pd.read_csv('yeast_result_FA.csv',index_col=0)
auc_fa=np.array(auc_,dtype=np.float)
auc_score_fa=auc_fa[5,7]
fpr, tpr, _ = roc_curve(ytest_fa[:,0], yscore_fa[:,0]) 
plt.plot(fpr, tpr, color='deepskyblue',
lw=lw, label='FA (AUC = %.4f)' % auc_score_fa)

plt.plot([0, 1], [0, 1], color='navy', lw=lw, linestyle='--')
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.03])
plt.xlabel('False positive rate')
plt.ylabel('True positive rate')
plt.legend(loc="lower right")
plt.savefig('yeast_dimension_comparation',dpi=1000)#save figure
plt.show()


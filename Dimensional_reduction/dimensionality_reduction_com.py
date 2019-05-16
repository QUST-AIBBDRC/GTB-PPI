import numpy as np
from sklearn.preprocessing import scale,StandardScaler
from sklearn.preprocessing import normalize,Normalizer
from sklearn.preprocessing import minmax_scale, MinMaxScaler
from sklearn.preprocessing import maxabs_scale, MaxAbsScaler
from sklearn.decomposition import PCA, KernelPCA
from sklearn.decomposition import FactorAnalysis
from sklearn.feature_selection import SelectFromModel
from sklearn.linear_model import LogisticRegression

def zscore_scaler(data):
    data=scale(H)
    return data
def normalizer(data):
    data = Normalizer().fit_transform(data)
    return data
def minmaxscaler(data):
    data=MinMaxScaler().fit_transform(data)
    return data
def maxabsscaler(data):
    data=MaxAbsScaler().fit_transform(data)
    return data
def zeroMean(dataMat):
    meanVal=np.mean(dataMat,axis=0)#axis represents the obtained mean value by column
    stdVal=np.std(dataMat,axis=0)
    newData=dataMat-meanVal
    new_data=newData/stdVal
    return new_data,meanVal
def covArray(dataMat):
    #obtain the  covariance matrix
    covMat=np.cov(dataMat,rowvar=0)
    return covMat
def featureMatrix(dataMat):
    eigVals,eigVects=np.linalg.eig(np.mat(dataMat))
	#datermine the eigenvalue and eigenvector
    return eigVals,eigVects
def percentage2n(eigVals,percentage=0.99):  
    #percentage represents the rate of contribution
    sortArray=np.sort(eigVals)   #ascending sort 
    sortArray=sortArray[-1::-1]  #descending order
    arraySum=sum(sortArray)
    tmpSum=0
    num=0
    for i in sortArray:
        tmpSum+=i
        num+=1
        if tmpSum>=arraySum*percentage:
            return num #num is the number of remaining principal component
#L1 regularized logistic regression is used to select the features
def logistic_dimension(data,label,parameter=1):
    logistic_=LogisticRegression(penalty="l1", C=parameter,max_iter=500)
    model=SelectFromModel(logistic_)
    new_data=model.fit_transform(data, label)
    mask=model.get_support(indices=True)
    return new_data,mask
# using factor analysis to reduce the dimension
def factorAnalysis(data,percentage = 0.9):
    dataMat = np.array(data) 
    newData,meanVal=zeroMean(data)  #equalization
    covMat=covArray(newData)  #covariance matrix
    eigVals,eigVects=featureMatrix(covMat)
    n_components = percentage2n(eigVals,percentage)
    clf = FactorAnalysis(n_components=n_components)
    new_data = clf.fit_transform(dataMat)
    return new_data  # return the new data
# using principal component to reduce dimension
def pca(data,percentage = 0.9):  
    dataMat = np.array(data) 
    newData,meanVal=zeroMean(data)  #equalization
    covMat=covArray(newData)  #covariance matrix
    eigVals,eigVects=featureMatrix(covMat)
    n_components = percentage2n(eigVals,percentage)
    clf=PCA(n_components=n_components)  
    new_x = clf.fit_transform(dataMat)
    return new_x
#using kernel principal component to reduce dimension
def kernelPCA(data,percentage=0.9):
    dataMat = np.array(data)  
    newData,meanVal=zeroMean(data)  
    covMat=covArray(newData)  
    eigVals,eigVects=featureMatrix(covMat)
    n_components = percentage2n(eigVals,percentage)
    #n_component=n_components
    clf=KernelPCA(n_components=n_components,kernel='rbf',gamma=1/1318)#rbf linear poly
    new_x=clf.fit_transform(dataMat)
    return new_x

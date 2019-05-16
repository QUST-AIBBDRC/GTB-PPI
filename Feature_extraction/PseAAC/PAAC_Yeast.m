clear all
clc
load P_proteinA
load P_proteinB
load N_proteinA
load N_proteinB
num1=numel(P_protein_a);
result_1=[];
result_11=[];
result_2=[];
result_22=[];
lambda=11;
 for i=1:num1
     result1=PAAC(P_proteinA{i},lambda);
     result11=PAAC(P_proteinB{i},lambda);
     result_1=[result_1;result1];
     result1=[];
     result_11=[result_11;result11];
     result11=[];
 end
  for i=1:num1
     result2=PAAC(proteinA{i},lambda);
     result22=PAAC(proteinB{i},lambda);
     result_2=[result_2;result2];
     result2=[];
     result_22=[result_22;result22];
     result22=[];
  end
  Pa=result_1;
  Pb=result_11;
  Na=result_2;
  Nb=result_22;
  save PAAC_Yeast_11.mat


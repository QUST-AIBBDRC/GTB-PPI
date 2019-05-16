clear all
clc
% load Matine_Data.mat
% A1=P_protein_a;
% A2=P_protein_b;
% A3=N_protein_a;
% A4=N_protein_b;
load P_proteinA.mat
load P_proteinB.mat
load N_proteinA.mat
load N_proteinB.mat
A1=P_proteinA;
A2=P_proteinB;
A3=proteinA;
A4=proteinB;
num1=numel(A1);
num2=numel(A2);
num3=numel(A3);
num4=numel(A4);
for i=1:num1
vPA1{i,1}=Hydrophobicity(A1{i});
vPA2{i,1}=reduced(A1{i});
vPA3{i,1}=mine5(A1{i});
vPA4{i,1}=charge(A1{i});
vPA5{i,1}=sencondary_str(A1{i});
vPA6{i,1}=DHP4(A1{i});
end
for i=1:num2
vPB1{i,1}=Hydrophobicity(A2{i});
vPB2{i,1}=reduced(A2{i});
vPB3{i,1}=mine5(A2{i});
vPB4{i,1}=charge(A2{i});
vPB5{i,1}=sencondary_str(A2{i});
vPB6{i,1}=DHP4(A2{i});
end
for i=1:num3
vNA1{i,1}=Hydrophobicity(A3{i});
vNA2{i,1}=reduced(A3{i});
vNA3{i,1}=mine5(A3{i});
vNA4{i,1}=charge(A3{i});
vNA5{i,1}=sencondary_str(A3{i});
vNA6{i,1}=DHP4(A3{i});
end
for i=1:num4
vNB1{i,1}=Hydrophobicity(A4{i});
vNB2{i,1}=reduced(A4{i});
vNB3{i,1}=mine5(A4{i});
vNB4{i,1}=charge(A4{i});
vNB5{i,1}=sencondary_str(A4{i});
vNB6{i,1}=DHP4(A4{i});
end
v1_P=[cell2mat(vPA1),cell2mat(vPB1)];
v1_N=[cell2mat(vNA1),cell2mat(vNB1)];
v2_P=[cell2mat(vPA2),cell2mat(vPB2)];
v2_N=[cell2mat(vNA2),cell2mat(vNB2)];
v3_P=[cell2mat(vPA3),cell2mat(vPB3)];
v3_N=[cell2mat(vNA3),cell2mat(vNB3)];
v4_P=[cell2mat(vPA4),cell2mat(vPB4)];
v4_N=[cell2mat(vNA4),cell2mat(vNB4)];
v5_P=[cell2mat(vPA5),cell2mat(vPB5)];
v5_N=[cell2mat(vNA5),cell2mat(vNB5)];
v6_P=[cell2mat(vPA6),cell2mat(vPB6)];
v6_N=[cell2mat(vNA6),cell2mat(vNB6)];
wei_v1=[v1_P;v1_N];
wei_v2=[v2_P;v2_N];
wei_v3=[v3_P;v3_N];
wei_v4=[v4_P;v4_N];
wei_v5=[v5_P;v5_N];
wei_v6=[v6_P;v6_N];
wei_reduce=[wei_v1,wei_v2,wei_v3,wei_v4,wei_v5,wei_v6];
data_reduce=[[ones(5594,1);zeros(5594,1)],wei_reduce];
save data_reduce_yeast.mat data_reduce
 
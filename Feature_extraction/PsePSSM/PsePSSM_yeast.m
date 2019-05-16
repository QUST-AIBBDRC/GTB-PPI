clear all
clc
load PSSM_yeast1_end
load PSSM_yeast2_end
load PSSM_yeast3_end
load PSSM_yeast4_end
lamda=9;
result_Pa=PSSM_yeast1_data;
result_Pb=PSSM_yeast2_data;
result_Na=PSSM_yeast3_data;
result_Nb=PSSM_yeast4_data;
SMR_yeast_Pa=PsePSSM(result_Pa,lamda);
SMR_yeast_Pb=PsePSSM(result_Pb,lamda);
SMR_yeast_Na=PsePSSM(result_Na,lamda);
SMR_yeast_Nb=PsePSSM(result_Nb,lamda);
PSSM_Pyeast=[SMR_yeast_Pa,SMR_yeast_Pb];
PSSM_Nyeast=[SMR_yeast_Na,SMR_yeast_Nb];
save PSSM_yeast_e_9.mat PSSM_Pyeast PSSM_Nyeast

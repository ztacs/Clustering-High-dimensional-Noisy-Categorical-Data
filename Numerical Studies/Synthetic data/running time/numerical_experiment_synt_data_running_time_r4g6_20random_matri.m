n=2048;m=2048;p=0.2 
%Four CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,6,p,experiment);

  
 [kmode_4_6_097_2048(experiment) et_kmode_4_6_097_2048(experiment)] =   kmode_observed_replicate(R_h_num097,4,30,experiment);
  
  
 
   [kmode_shuffle_4_6_097_2048(experiment) et_kmode_shuffle_4_6_097_2048(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
  
  [Acc_4_6_097_2048(experiment) et_Acc_4_6_097_2048(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
   [spectralCAT_4_6_097_2048(experiment) et_spectralCAT_4_6_097_2048(experiment)] =   spectralCAT(R_h_num097,4,30,experiment);
end

mean_et_kmode_4_6_097_2048=mean(et_kmode_4_6_097_2048);
mean_et_kmode_shuffle_4_6_097_2048=mean(et_kmode_shuffle_4_6_097_2048);
mean_et_Acc_4_6_097_2048=mean(et_Acc_4_6_097_2048);
mean_et_spectralCAT_4_6_097_2048=mean(et_spectralCAT_4_6_097_2048);

std_et_kmode_4_6_097_2048=std(et_kmode_4_6_097_2048);
std_et_kmode_shuffle_4_6_097_2048=std(et_kmode_shuffle_4_6_097_2048);
std_et_Acc_4_6_097_2048=std(et_Acc_4_6_097_2048);
std_et_spectralCAT_4_6_097_2048=std(et_spectralCAT_4_6_097_2048);

n=1024;m=1024;p=0.2 
%Four CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,6,p,experiment);

  
 [kmode_4_6_097_1024(experiment) et_kmode_4_6_097_1024(experiment)] =   kmode_observed_replicate(R_h_num097,4,30,experiment);
  
  
 
   [kmode_shuffle_4_6_097_1024(experiment) et_kmode_shuffle_4_6_097_1024(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
  
  [Acc_4_6_097_1024(experiment) et_Acc_4_6_097_1024(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
   [spectralCAT_4_6_097_1024(experiment) et_spectralCAT_4_6_097_1024(experiment)] =   spectralCAT(R_h_num097,4,30,experiment);
end

mean_et_kmode_4_6_097_1024=mean(et_kmode_4_6_097_1024);
mean_et_kmode_shuffle_4_6_097_1024=mean(et_kmode_shuffle_4_6_097_1024);
mean_et_Acc_4_6_097_1024=mean(et_Acc_4_6_097_1024);
mean_et_spectralCAT_4_6_097_1024=mean(et_spectralCAT_4_6_097_1024);

std_et_kmode_4_6_097_1024=std(et_kmode_4_6_097_1024);
std_et_kmode_shuffle_4_6_097_1024=std(et_kmode_shuffle_4_6_097_1024);
std_et_Acc_4_6_097_1024=std(et_Acc_4_6_097_1024);
std_et_spectralCAT_4_6_097_1024=std(et_spectralCAT_4_6_097_1024);


n=512;m=512;p=0.2 
%Four CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,6,p,experiment);

  
 [kmode_4_6_097_512(experiment) et_kmode_4_6_097_512(experiment)] =   kmode_observed_replicate(R_h_num097,4,30,experiment);
  
  
 
   [kmode_shuffle_4_6_097_512(experiment) et_kmode_shuffle_4_6_097_512(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
  
  [Acc_4_6_097_512(experiment) et_Acc_4_6_097_512(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
   [spectralCAT_4_6_097_512(experiment) et_spectralCAT_4_6_097_512(experiment)] =   spectralCAT(R_h_num097,4,30,experiment);
end

mean_et_kmode_4_6_097_512=mean(et_kmode_4_6_097_512);
mean_et_kmode_shuffle_4_6_097_512=mean(et_kmode_shuffle_4_6_097_512);
mean_et_Acc_4_6_097_512=mean(et_Acc_4_6_097_512);
mean_et_spectralCAT_4_6_097_512=mean(et_spectralCAT_4_6_097_512);

std_et_kmode_4_6_097_512=std(et_kmode_4_6_097_512);
std_et_kmode_shuffle_4_6_097_512=std(et_kmode_shuffle_4_6_097_512);
std_et_Acc_4_6_097_512=std(et_Acc_4_6_097_512);
std_et_spectralCAT_4_6_097_512=std(et_spectralCAT_4_6_097_512);



n=256;m=256;p=0.2 
%Four CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,6,p,experiment);

  
 [kmode_4_6_097_256(experiment) et_kmode_4_6_097_256(experiment)] =   kmode_observed_replicate(R_h_num097,4,30,experiment);
  
  
 
   [kmode_shuffle_4_6_097_256(experiment) et_kmode_shuffle_4_6_097_256(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
  
  [Acc_4_6_097_256(experiment) et_Acc_4_6_097_256(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
   [spectralCAT_4_6_097_256(experiment) et_spectralCAT_4_6_097_256(experiment)] =   spectralCAT(R_h_num097,4,30,experiment);
end

mean_et_kmode_4_6_097_256=mean(et_kmode_4_6_097_256);
mean_et_kmode_shuffle_4_6_097_256=mean(et_kmode_shuffle_4_6_097_256);
mean_et_Acc_4_6_097_256=mean(et_Acc_4_6_097_256);
mean_et_spectralCAT_4_6_097_256=mean(et_spectralCAT_4_6_097_256);

std_et_kmode_4_6_097_256=std(et_kmode_4_6_097_256);
std_et_kmode_shuffle_4_6_097_256=std(et_kmode_shuffle_4_6_097_256);
std_et_Acc_4_6_097_256=std(et_Acc_4_6_097_256);
std_et_spectralCAT_4_6_097_256=std(et_spectralCAT_4_6_097_256);



n=128;m=128;p=0.2 
%Four CLUSTERS;  6 CATEGORIES; 
for experiment = 1 : 20
experiment
r=4
g=6
[R_h_num095 R_h_num0955 R_h_num096 R_h_num0965 R_h_num097 R_h_num0975 R_h_num098 R_h_num0985 R_h_num099  ]= Generate_muticategory_synthetic_coupling_for_miss095_099(n,m,4,6,p,experiment);

  
 [kmode_4_6_097_128(experiment) et_kmode_4_6_097_128(experiment)] =   kmode_observed_replicate(R_h_num097,4,30,experiment);
  
  
 
   [kmode_shuffle_4_6_097_128(experiment) et_kmode_shuffle_4_6_097_128(experiment)] =   kmode_observed_replicate_shuffle_each_rep(R_h_num097,4,30,experiment);
  
  [Acc_4_6_097_128(experiment) et_Acc_4_6_097_128(experiment)] =   Spectral_method_unit_circle(4,R_h_num097,30,experiment);
   [spectralCAT_4_6_097_128(experiment) et_spectralCAT_4_6_097_128(experiment)] =   spectralCAT(R_h_num097,4,30,experiment);
end

mean_et_kmode_4_6_097_128=mean(et_kmode_4_6_097_128);
mean_et_kmode_shuffle_4_6_097_128=mean(et_kmode_shuffle_4_6_097_128);
mean_et_Acc_4_6_097_128=mean(et_Acc_4_6_097_128);
mean_et_spectralCAT_4_6_097_128=mean(et_spectralCAT_4_6_097_128);

std_et_kmode_4_6_097_128=std(et_kmode_4_6_097_128);
std_et_kmode_shuffle_4_6_097_128=std(et_kmode_shuffle_4_6_097_128);
std_et_Acc_4_6_097_128=std(et_Acc_4_6_097_128);
std_et_spectralCAT_4_6_097_128=std(et_spectralCAT_4_6_097_128);



